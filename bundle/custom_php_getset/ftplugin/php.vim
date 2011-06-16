" Getter / Setter
let b:phpgetset_getterTemplate =
  \ "\n" .
  \ "   /**\n" .
  \ "    * Get %varnameclean%.\n" .
  \ "    *\n" .
  \ "    * @return %varnameclean%\n" .   
  \ "    */\n" .
  \ "   public function %funcname%()\n" .
  \ "   {\n" .
  \ "       return $this->%varname%;\n" .
  \ "   }" 

let b:phpgetset_setterTemplate =
  \ "\n" .
  \ "   /**\n" .
  \ "    * Set %varnameclean%.\n" .
  \ "    *\n" .
  \ "    * @param $%varnameclean% the value to be set\n" .   
  \ "    */\n" .
  \ "   public function %funcname%($%varnameclean%)\n" .
  \ "   {\n" .
  \ "       $this->%varname% = $%varnameclean%;\n" .
  \ "   }" 
