module ApplicationHelper
  def default_meta_tags
    {
      site: 'いまいちなサイト',
      title: 'トップページ',
      reverse: true,
      charset: 'utf-8',
      description: 'ご訪問ありがとうございます。blogをruby on ralesで作成しました。',
      keywords: 'rails,ruby,プログラミング,bike,coffee',
      separator: '|',
      icon: [
        { href: image_url('coffee.png') }
      ],
      og: defalut_og,
      twitter: default_twitter_card
    }
  end
  
  private
  
  def defalut_og
    {
      title: :full_title,          # :full_title とすると、サイトに表示される <title> と全く同じものを表示できる
      description: :description,   # 上に同じ
      url: request.url,
      image: 'https://example.com/hoge.png'
    }
  end
  
  def default_twitter_card
    {
      card: 'summary_large_image', # または summary
      site: '@fumihisa_y'            # twitter ID
    }
  end

  
end
