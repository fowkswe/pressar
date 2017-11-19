class Pressar::Image < Base
  self.table_name = 'wp_posts'
  belongs_to :posts
  has_many :post_metas, foreign_key: :post_id

  def original
    "#{s3_base_url}#{s3_info['key']}"
  end

  def largest
    ['large', 'post-thumbnail', 'medium', 'thumbnail'].each do |size|
      return post_thumbnail if meta['sizes'][size] && size=='post-thumbnail'
      return send(size) if meta['sizes'][size]
    end
  end

  def post_thumbnail
    "#{s3_base_url}#{bucket_directory}#{meta['sizes']['thumbnail']['file']}"
  end
  def thumbnail
    "#{s3_base_url}#{bucket_directory}#{meta['sizes']['thumbnail']['file']}"
  end

  def medium
    "#{s3_base_url}#{bucket_directory}#{meta['sizes']['medium']['file']}"
  end

  def large
    "#{s3_base_url}#{bucket_directory}#{meta['sizes']['large']['file']}"
  end

  def post_thumbnail
    "#{s3_base_url}#{bucket_directory}#{meta['sizes']['post-thumbnail']['file']}" unless meta['sizes']['post-thumbnail'].nil?
  end

  def original_filename
    File.basename(original)
  end

  def bucket_directory
    s3_info['key'].gsub(File.basename(s3_info['key']), '')
  end

  def s3_base_url
    "http://#{s3_info['bucket']}.s3-#{s3_info['region']}.amazonaws.com/"
  end

  def meta
    @meta ||= PHP.unserialize(post_metas.where(meta_key: "_wp_attachment_metadata").last.meta_value)
  end

  def s3_info
    @s3_info ||= PHP.unserialize(post_metas.where(meta_key: :amazonS3_info).last.meta_value)
  end
end