-*- tab-width 2; indent-tabs-mode nil;

Copyright 2016 Bas Bossink <bas.bossink@gmail.com>.
All rights reserved.
Use of this source code is governed by a BSD-style
license that can be found in the LICENSE file.

psiw version should show version information:

  $ psiw version
  Project Structure Improvement Workbench Version 0.1.0

psiw version should show commit hash:

  $ psiw version -v
  Project Structure Improvement Workbench Version 0.1.0
  Git commit hash: [0-9a-fA-F]+ (re)


  $ psiw version --verbose
  Project Structure Improvement Workbench Version 0.1.0
  Git commit hash: [0-9a-fA-F]+ (re)

  $ psiw version --commit-hash
  Project Structure Improvement Workbench Version 0.1.0
  Git commit hash: [0-9a-fA-F]+ (re)

  $ psiw version -c
  Project Structure Improvement Workbench Version 0.1.0
  Git commit hash: [0-9a-fA-F]+ (re)
