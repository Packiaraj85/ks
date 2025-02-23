terraform { 
  cloud { 
    
    organization = "idpa" 

    workspaces { 
      name = "Test-Workspace" 
    } 
  } 
}