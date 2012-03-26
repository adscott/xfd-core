# eXtreme Feedback Device (XFD) is a Build Radiator for Continuous
# Integration servers. Copyright (C) 2010-2012 The Build Doctor Limited.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
@TeamCity =
  name: "teamcity"
  defaultUri: "/"
  defaultHost: "localhost"
  defaultPort: 8111
  url: (config) ->
    CiServer.url config.host, config.port, config.context, "/app/json/api/json?jsonp=?"

  parse: (json) ->
    Hudson.parse json
