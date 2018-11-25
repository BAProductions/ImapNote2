# Copyright (C) 2014 The MoKee OpenSource Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-subdir-java-files) \

LOCAL_RESOURCE_DIR := $(addprefix $(LOCAL_PATH)/, $(res_dir))

LOCAL_USE_AAPT2 := true

LOCAL_AAPT_FLAGS := --auto-add-overlay

LOCAL_STATIC_JAVA_LIBRARIES += android-support-v4
LOCAL_STATIC_JAVA_LIBRARIES += android-support-v7-appcompat
LOCAL_STATIC_JAVA_LIBRARIES += android-support-v7-gridlayout
LOCAL_STATIC_JAVA_LIBRARIES += android-support-v13
LOCAL_STATIC_JAVA_LIBRARIES += android-opt-bitmap
LOCAL_STATIC_JAVA_LIBRARIES += owasp-html-sanitizer
LOCAL_STATIC_JAVA_LIBRARIES += activation
LOCAL_STATIC_JAVA_LIBRARIES += additionnal
LOCAL_STATIC_JAVA_LIBRARIES += commons
LOCAL_STATIC_JAVA_LIBRARIES += activation
LOCAL_STATIC_JAVA_LIBRARIES += javamaildir
LOCAL_STATIC_JAVA_LIBRARIES += mail

#LOCAL_STATIC_JAVA_LIBRARIES += \ 
    #android-support-v4 \
    #android-support-v7-appcompat \
    #android-support-v7-gridlayout \
    #android-support-v13 \
    #android-opt-bitmap \
    #owasp-html-sanitizer \
    #activation \
    #additionnal \
    #commons \
    #javamaildir \
    #mail

LOCAL_SDK_VERSION := current

LOCAL_PACKAGE_NAME := Notess

include $(BUILD_PACKAGE)
##################################################
include $(CLEAR_VARS)

#LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES += activation:libs/activation.jar
#LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES += additionnal:libs/additionnal.jar
#LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES += commons:libs/commons-io-2.4.jar
#LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES += javamaildir:libs/javamaildir-0.6.jar
#LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES += mail:libs/mail.jar
#LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := \   
    #additionnal:libs/additionnal.jar \
    #commons:libs/commons-io-2.4.jar \
    #javamaildir:libs/javamaildir-0.6.jar \
    #mail:libs/mail.jar

include $(BUILD_MULTI_PREBUILT)
