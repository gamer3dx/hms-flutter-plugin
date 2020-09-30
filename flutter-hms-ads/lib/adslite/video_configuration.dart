/*
    Copyright 2020. Huawei Technologies Co., Ltd. All rights reserved.

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/
class VideoConfiguration {
  int audioFocusType;
  bool customizeOperationRequested;
  bool startMuted;

  VideoConfiguration(
      {this.audioFocusType, this.customizeOperationRequested, this.startMuted});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (audioFocusType != null) json['audioFocusType'] = audioFocusType;
    if (customizeOperationRequested != null)
      json['customizeOperationRequested'] = customizeOperationRequested;
    if (startMuted != null) json['startMuted'] = startMuted;

    return json;
  }
}