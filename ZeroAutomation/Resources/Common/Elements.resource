*** Variables ***

# Buttons
${SignInZeroBank}            //button[contains(.,'Signin')]
${HomePage}                  //strong[contains(.,'Home')]
${OnlineBankingPage}         //strong[contains(.,'Online Banking')]
${FeedbackPage}              //strong[contains(.,'Feedback')]
${SendMessageButton}         //input[@value='Send Message']
${BtnSignIn}                 //input[@value='Sign in']

# Div
${ContainerMessage}          (//div[@class='container'])[2]

# User Info
${ValidName}                 John Doe   
${ValidEmail}                jonhdoe@email.com 
${ValidLogin}                username
${ValidPassword}             password

# Heading
${HeaderZeroBank}            //a[contains(.,'Zero Bank')]
${HeadingOnlineBanking}      (//div[contains(@class,'row')])[2]
${HeadingFeedback}           //h3[contains(.,'Feedback')]
${MessageSent}               Thank you for your comments, ${ValidName}. They will be reviewed by our Customer Service staff and given the full attention that they deserve.
${HeaderUser}                //a[contains(.,'username')]

# Inputs
${SearchBoxZeroBank}         //input[@placeholder='Search']
${NameFeedback}              //input[@name='name']
${EmailFeedback}             //input[@name='email']
${SubjectFeedback}           //input[@name='subject']
${ValidSubject}              Testing
${CommentFeedback}           //textarea[@name='comment']
${ValidComment}              Testing the comment feedback page to check if it works
${InputLogin}                //input[@name='user_login']
${InputPassword}             //input[@name='user_password']

# Images
${ImgZeroBank}               //img[contains(@src,'1.jpg')]