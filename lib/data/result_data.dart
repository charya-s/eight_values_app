returnResultData() {
  final _data = 
  const [
    {
        "name": "Anarcho-Communism",
         
            "econ": 100,
            "dipl": 50,
            "govt": 100,
            "scty": 90
        
    },
    {
        "name": "Libertarian Communism",
         
            "econ": 100,
            "dipl": 70,
            "govt": 80,
            "scty": 80
        
    },
    {
        "name": "Trotskyism",
         
            "econ": 100,
            "dipl": 100,
            "govt": 60,
            "scty": 80
        
    },
    {
        "name": "Marxism",
         
            "econ": 100,
            "dipl": 70,
            "govt": 40,
            "scty": 80
        
    },
    {
        "name": "De Leonism",
         
            "econ": 100,
            "dipl": 30,
            "govt": 30,
            "scty": 80
        
    },
    {
        "name": "Leninism",
         
            "econ": 100,
            "dipl": 40,
            "govt": 20,
            "scty": 70
        
    },
    {
        "name": "Stalinism/Maoism",
         
            "econ": 100,
            "dipl": 20,
            "govt": 0,
            "scty": 60
        
    },
    {
        "name": "Religious Communism",
         
            "econ": 100,
            "dipl": 50,
            "govt": 30,
            "scty": 30
        
    },
    {
        "name": "State Socialism",
         
            "econ": 80,
            "dipl": 30,
            "govt": 30,
            "scty": 70
        
    },
    {
        "name": "Theocratic Socialism",
         
            "econ": 80,
            "dipl": 50,
            "govt": 30,
            "scty": 20
        
    },
    {
        "name": "Religious Socialism",
         
            "econ": 80,
            "dipl": 50,
            "govt": 70,
            "scty": 20
        
    },
    {
        "name": "Democratic Socialism",
         
            "econ": 80,
            "dipl": 50,
            "govt": 50,
            "scty": 80
        
    },
    {
        "name": "Revolutionary Socialism",
         
            "econ": 80,
            "dipl": 20,
            "govt": 50,
            "scty": 70
        
    },
    {
        "name": "Libertarian Socialism",
         
            "econ": 80,
            "dipl": 80,
            "govt": 80,
            "scty": 80
        
    },
    {
        "name": "Anarcho-Syndicalism",
         
            "econ": 80,
            "dipl": 50,
            "govt": 100,
            "scty": 80
        
    },
    {
        "name": "Left-Wing Populism",
         
            "econ": 60,
            "dipl": 40,
            "govt": 30,
            "scty": 70
        
    },
    {
        "name": "Theocratic Distributism",
         
            "econ": 60,
            "dipl": 40,
            "govt": 30,
            "scty": 20
        
    },
    {
        "name": "Distributism",
         
            "econ": 60,
            "dipl": 50,
            "govt": 50,
            "scty": 20
        
    },
    {
        "name": "Social Liberalism",
         
            "econ": 60,
            "dipl": 60,
            "govt": 60,
            "scty": 80
        
    },
    {
        "name": "Christian Democracy",
         
            "econ": 60,
            "dipl": 60,
            "govt": 50,
            "scty": 30
        
    },
    {
        "name": "Social Democracy",
         
            "econ": 60,
            "dipl": 70,
            "govt": 60,
            "scty": 80
        
    },
    {
        "name": "Progressivism",
         
            "econ": 60,
            "dipl": 80,
            "govt": 60,
            "scty": 100
        
    },
    {
        "name": "Anarcho-Mutualism",
         
            "econ": 60,
            "dipl": 50,
            "govt": 100,
            "scty": 70
        
    },
    {
        "name": "National Totalitarianism",
         
            "econ": 50,
            "dipl": 20,
            "govt": 0,
            "scty": 50
        
    },
    {
        "name": "Global Totalitarianism",
         
            "econ": 50,
            "dipl": 80,
            "govt": 0,
            "scty": 50
        
    },
    {
        "name": "Technocracy",
         
            "econ": 60,
            "dipl": 60,
            "govt": 20,
            "scty": 70
        
    },
    {
        "name": "Centrist",
         
            "econ": 50,
            "dipl": 50,
            "govt": 50,
            "scty": 50
        
    },
    {
        "name": "Liberalism",
         
            "econ": 50,
            "dipl": 60,
            "govt": 60,
            "scty": 60
        
    },
    {
        "name": "Religious Anarchism",
         
            "econ": 50,
            "dipl": 50,
            "govt": 100,
            "scty": 20
        
    },
    {
        "name": "Right-Wing Populism",
         
            "econ": 40,
            "dipl": 30,
            "govt": 30,
            "scty": 30
        
    },
    {
        "name": "Moderate Conservatism",
         
            "econ": 40,
            "dipl": 40,
            "govt": 50,
            "scty": 30
        
    },
    {
        "name": "Reactionary",
         
            "econ": 40,
            "dipl": 40,
            "govt": 40,
            "scty": 10
        
    },
    {
        "name": "Social Libertarianism",
         
            "econ": 60,
            "dipl": 70,
            "govt": 80,
            "scty": 70
        
    },
    {
        "name": "Libertarianism",
         
            "econ": 40,
            "dipl": 60,
            "govt": 80,
            "scty": 60
        
    },
    {
        "name": "Anarcho-Egoism",
         
            "econ": 40,
            "dipl": 50,
            "govt": 100,
            "scty": 50
        
    },
    {
        "name": "Nazism",
         
            "econ": 40,
            "dipl": 0,
            "govt": 0,
            "scty": 5
        
    },
    {
        "name": "Autocracy",
         
            "econ": 50,
            "dipl": 20,
            "govt": 20,
            "scty": 50
        
    },
    {
        "name": "Fascism",
         
            "econ": 40,
            "dipl": 20,
            "govt": 20,
            "scty": 20
        
    },
    {
        "name": "Capitalist Fascism",
         
            "econ": 20,
            "dipl": 20,
            "govt": 20,
            "scty": 20
        
    },
    {
        "name": "Conservatism",
         
            "econ": 30,
            "dipl": 40,
            "govt": 40,
            "scty": 20
        
    },
    {
        "name": "Neo-Liberalism",
         
            "econ": 30,
            "dipl": 30,
            "govt": 50,
            "scty": 60
        
    },
    {
        "name": "Classical Liberalism",
         
            "econ": 30,
            "dipl": 60,
            "govt": 60,
            "scty": 80
        
    },
    {
        "name": "Authoritarian Capitalism",
         
            "econ": 20,
            "dipl": 30,
            "govt": 20,
            "scty": 40
        
    },
    {
        "name": "State Capitalism",
         
            "econ": 20,
            "dipl": 50,
            "govt": 30,
            "scty": 50
        
    },
    {
        "name": "Neo-Conservatism",
         
            "econ": 20,
            "dipl": 20,
            "govt": 40,
            "scty": 20
        
    },
    {
        "name": "Fundamentalism",
         
            "econ": 20,
            "dipl": 30,
            "govt": 30,
            "scty": 5
        
    },
    {
        "name": "Libertarian Capitalism",
         
            "econ": 20,
            "dipl": 50,
            "govt": 80,
            "scty": 60
        
    },
    {
        "name": "Market Anarchism",
         
            "econ": 20,
            "dipl": 50,
            "govt": 100,
            "scty": 50
        
    },
    {
        "name": "Objectivism",
         
            "econ": 10,
            "dipl": 50,
            "govt": 90,
            "scty": 40
        
    },
    {
        "name": "Totalitarian Capitalism",
         
            "econ": 0,
            "dipl": 30,
            "govt": 0,
            "scty": 50
        
    },
    {
        "name": "Ultra-Capitalism",
         
            "econ": 0,
            "dipl": 40,
            "govt": 50,
            "scty": 50
        
    },
    {
        "name": "Anarcho-Capitalism",
         
            "econ": 0,
            "dipl": 50,
            "govt": 100,
            "scty": 50
        
    }
  ];

  return _data;
}