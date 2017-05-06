class Candidate < ActiveRecord::Base
 has_attached_file :cv
	validates_attachment_presence :cv
	validates_attachment_size :cv, :less_than => 5.megabytes
	validates_attachment_content_type :cv, :content_type => ['application/pdf', 'application/msword', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document' ]
	validates :name, :highest_degree, :specialization , :marks, :total_experience, :work_summary, :work_gap, :education_gap, :mobile , presence: true
	HIGHESTDEGREE = ['Select', 'Not Pursuing Graduation', 'B.Sc', 'B.Tech/B.E', 'Diploma', 'M.Tech', 'Other']  
	SPECIALIZATION = ['Select', 'Agriculture', 'Automobile', 'Aviation', 'Bio-Chemistry/Bio-Technology', 'Biomedical', 'Ceramics', 'Chemical', 'Civil', 'Computers ', 'Electrical', 'Electronics/Telecommunication', 'Energy', 'Environmental', 'Instrumentation', 'Marine', 'Mechanical', 'Metallurgy', 'Mineral', 'Mining', 'Nuclear' , 'Paint/Oil', 'Petroleum' , 'Plastics', 'Production/Industrial', 'Textile',  'Other Engineering', 'Other' ]
	
end


   