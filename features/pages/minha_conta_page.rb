class MinhaContaPage < SitePrism::Page
    # A page deve mapear o elemento e definir o elemento não as assertions:
    set_url '?controller=my-account'

    element :page_title,'page-heading'
    element :account_name,'[title="View my customer account"]'

end    