%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 
%% This file is part of BibTool.
%% It is distributed under the GNU General Public License.
%% See the file COPYING for details.
%% 
%% (c) 1995-2018 Gerd Neugebauer
%% 
%% Net: gene@gerd-neugebauer.de
%% 
%% This program is free software; you can redistribute it and/or modify
%% it under the terms of the GNU General Public License as published by
%% the Free Software Foundation; either version 2, or (at your option)
%% any later version.
%%
%% This program is distributed in the hope that it will be useful,
%% but WITHOUT ANY WARRANTY; without even the implied warranty of
%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%% GNU General Public License for more details.
%%
%% You should have received a copy of the GNU General Public License
%% along with this program; if not, write to the Free Software
%% Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Semantic checks for year fields
%

check.rule { year "^[\"{]?[0-9][0-9][\"}]?$"   }
check.rule { year "^[\"{]?1[89][0-9][0-9][\"}]?$"   }
check.rule { year "^[\"{]?20[0-9][0-9][\"}]?$"   }
check.rule { year ""  
	          "\@ \$: Semantic error. Year has to be a suitable number" }

