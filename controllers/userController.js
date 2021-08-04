module.exports = {
    login:(req, res) => {
           res.render('login',{
               title: 'Logeate'
           })
       },
    about:(req,res) =>{
        res.render('about')
    }
   
   }