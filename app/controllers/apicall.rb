class Apicall_controller < ApplicationController


  def index

    url='www.federalregister.gov/api/v1/documents.json?per_page=1000&order=relevance&conditions%5Bpublication_date%5D%5Bgte%5D=2017-01-01&conditions%5Btype%5D%5B%5D=PRORULE&conditions%5Btype%5D%5B%5D=NOTICE&conditions%5Bsignificant%5D=1'

    date= params[:date]
    # make logic to dynamically change date to 4 month prior to the day
    date_dynamic_url = url

    @api_data= JSON.parse(RESTClient.get(date_dynamic_url,))
    @api_data_json=@api_data.to_json
    render 'api/data'
   end

end
