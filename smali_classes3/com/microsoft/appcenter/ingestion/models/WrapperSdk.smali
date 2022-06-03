.class public Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
.super Ljava/lang/Object;
.source "WrapperSdk.java"

# interfaces
.implements Lcom/microsoft/appcenter/ingestion/models/Model;


# static fields
.field private static final LIVE_UPDATE_DEPLOYMENT_KEY:Ljava/lang/String; = "liveUpdateDeploymentKey"

.field private static final LIVE_UPDATE_PACKAGE_HASH:Ljava/lang/String; = "liveUpdatePackageHash"

.field private static final LIVE_UPDATE_RELEASE_LABEL:Ljava/lang/String; = "liveUpdateReleaseLabel"

.field private static final WRAPPER_RUNTIME_VERSION:Ljava/lang/String; = "wrapperRuntimeVersion"

.field private static final WRAPPER_SDK_NAME:Ljava/lang/String; = "wrapperSdkName"

.field private static final WRAPPER_SDK_VERSION:Ljava/lang/String; = "wrapperSdkVersion"


# instance fields
.field private liveUpdateDeploymentKey:Ljava/lang/String;

.field private liveUpdatePackageHash:Ljava/lang/String;

.field private liveUpdateReleaseLabel:Ljava/lang/String;

.field private wrapperRuntimeVersion:Ljava/lang/String;

.field private wrapperSdkName:Ljava/lang/String;

.field private wrapperSdkVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 195
    const/4 v3, 0x1

    move v0, v3

    .line 216
    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
    :goto_0
    return v0

    .line 197
    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
    :cond_0
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 198
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 200
    :cond_2
    move-object v3, v1

    check-cast v3, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;

    move-object v2, v3

    .line 201
    .local v2, "that":Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->wrapperSdkVersion:Ljava/lang/String;

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->wrapperSdkVersion:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->wrapperSdkVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 202
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 201
    :cond_4
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->wrapperSdkVersion:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 204
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->wrapperSdkName:Ljava/lang/String;

    if-eqz v3, :cond_7

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->wrapperSdkName:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->wrapperSdkName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 205
    :cond_6
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 204
    :cond_7
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->wrapperSdkName:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 207
    :cond_8
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->wrapperRuntimeVersion:Ljava/lang/String;

    if-eqz v3, :cond_a

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->wrapperRuntimeVersion:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->wrapperRuntimeVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 208
    :cond_9
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 207
    :cond_a
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->wrapperRuntimeVersion:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 210
    :cond_b
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->liveUpdateReleaseLabel:Ljava/lang/String;

    if-eqz v3, :cond_d

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->liveUpdateReleaseLabel:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->liveUpdateReleaseLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 211
    :cond_c
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 210
    :cond_d
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->liveUpdateReleaseLabel:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 213
    :cond_e
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->liveUpdateDeploymentKey:Ljava/lang/String;

    if-eqz v3, :cond_10

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->liveUpdateDeploymentKey:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->liveUpdateDeploymentKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 214
    :cond_f
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .line 213
    :cond_10
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->liveUpdateDeploymentKey:Ljava/lang/String;

    if-nez v3, :cond_f

    .line 216
    :cond_11
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->liveUpdatePackageHash:Ljava/lang/String;

    if-eqz v3, :cond_12

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->liveUpdatePackageHash:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->liveUpdatePackageHash:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    move v0, v3

    goto/16 :goto_0

    :cond_12
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->liveUpdatePackageHash:Ljava/lang/String;

    if-nez v3, :cond_13

    const/4 v3, 0x1

    goto :goto_1

    :cond_13
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getLiveUpdateDeploymentKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->liveUpdateDeploymentKey:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
    return-object v0
.end method

.method public getLiveUpdatePackageHash()Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->liveUpdatePackageHash:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
    return-object v0
.end method

.method public getLiveUpdateReleaseLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->liveUpdateReleaseLabel:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
    return-object v0
.end method

.method public getWrapperRuntimeVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->wrapperRuntimeVersion:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
    return-object v0
.end method

.method public getWrapperSdkName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->wrapperSdkName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
    return-object v0
.end method

.method public getWrapperSdkVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->wrapperSdkVersion:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->wrapperSdkVersion:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->wrapperSdkVersion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    move v1, v2

    .line 222
    .local v1, "result":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->wrapperSdkName:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->wrapperSdkName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    move v1, v2

    .line 223
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->wrapperRuntimeVersion:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->wrapperRuntimeVersion:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    move v1, v2

    .line 224
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->liveUpdateReleaseLabel:Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->liveUpdateReleaseLabel:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v2, v3

    move v1, v2

    .line 225
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->liveUpdateDeploymentKey:Ljava/lang/String;

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->liveUpdateDeploymentKey:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v2, v3

    move v1, v2

    .line 226
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->liveUpdatePackageHash:Ljava/lang/String;

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->liveUpdatePackageHash:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v2, v3

    move v1, v2

    .line 227
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
    return v0

    .line 221
    .end local v1    # "result":I
    .restart local v0    # "this":Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 222
    .restart local v1    # "result":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 223
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 224
    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    .line 225
    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    .line 226
    :cond_5
    const/4 v3, 0x0

    goto :goto_5
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
    move-object v1, p1

    .local v1, "object":Lorg/json/JSONObject;
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "wrapperSdkVersion"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->setWrapperSdkVersion(Ljava/lang/String;)V

    .line 174
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "wrapperSdkName"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->setWrapperSdkName(Ljava/lang/String;)V

    .line 175
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "wrapperRuntimeVersion"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->setWrapperRuntimeVersion(Ljava/lang/String;)V

    .line 176
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "liveUpdateReleaseLabel"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->setLiveUpdateReleaseLabel(Ljava/lang/String;)V

    .line 177
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "liveUpdateDeploymentKey"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->setLiveUpdateDeploymentKey(Ljava/lang/String;)V

    .line 178
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "liveUpdatePackageHash"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->setLiveUpdatePackageHash(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public setLiveUpdateDeploymentKey(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
    move-object v1, p1

    .local v1, "liveUpdateDeploymentKey":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->liveUpdateDeploymentKey:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setLiveUpdatePackageHash(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
    move-object v1, p1

    .local v1, "liveUpdatePackageHash":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->liveUpdatePackageHash:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setLiveUpdateReleaseLabel(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
    move-object v1, p1

    .local v1, "liveUpdateReleaseLabel":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->liveUpdateReleaseLabel:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setWrapperRuntimeVersion(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
    move-object v1, p1

    .local v1, "wrapperRuntimeVersion":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->wrapperRuntimeVersion:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setWrapperSdkName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
    move-object v1, p1

    .local v1, "wrapperSdkName":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->wrapperSdkName:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setWrapperSdkVersion(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
    move-object v1, p1

    .local v1, "wrapperSdkVersion":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->wrapperSdkVersion:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public write(Lorg/json/JSONStringer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
    move-object v1, p1

    .local v1, "writer":Lorg/json/JSONStringer;
    move-object v2, v1

    const-string/jumbo v3, "wrapperSdkVersion"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->getWrapperSdkVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    move-object v2, v1

    const-string/jumbo v3, "wrapperSdkName"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->getWrapperSdkName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    move-object v2, v1

    const-string/jumbo v3, "wrapperRuntimeVersion"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->getWrapperRuntimeVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    move-object v2, v1

    const-string/jumbo v3, "liveUpdateReleaseLabel"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->getLiveUpdateReleaseLabel()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    move-object v2, v1

    const-string/jumbo v3, "liveUpdateDeploymentKey"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->getLiveUpdateDeploymentKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    move-object v2, v1

    const-string/jumbo v3, "liveUpdatePackageHash"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->getLiveUpdatePackageHash()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    return-void
.end method
