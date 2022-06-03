.class public Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
.super Ljava/lang/Object;
.source "Exception.java"

# interfaces
.implements Lcom/microsoft/appcenter/ingestion/models/Model;


# static fields
.field private static final INNER_EXCEPTIONS:Ljava/lang/String; = "innerExceptions"

.field private static final MESSAGE:Ljava/lang/String; = "message"

.field private static final MINIDUMP_FILE_PATH:Ljava/lang/String; = "minidumpFilePath"

.field private static final STACK_TRACE:Ljava/lang/String; = "stackTrace"

.field private static final WRAPPER_SDK_NAME:Ljava/lang/String; = "wrapperSdkName"


# instance fields
.field private frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;",
            ">;"
        }
    .end annotation
.end field

.field private innerExceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;

.field private minidumpFilePath:Ljava/lang/String;

.field private stackTrace:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private wrapperSdkName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 244
    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    :goto_0
    return v0

    .line 229
    .restart local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
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

    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 231
    :cond_2
    move-object v3, v1

    check-cast v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;

    move-object v2, v3

    .line 233
    .local v2, "exception":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->type:Ljava/lang/String;

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->type:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    :cond_4
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->type:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 234
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->message:Ljava/lang/String;

    if-eqz v3, :cond_7

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->message:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 235
    :cond_6
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 234
    :cond_7
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->message:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 236
    :cond_8
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->stackTrace:Ljava/lang/String;

    if-eqz v3, :cond_a

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->stackTrace:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->stackTrace:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 237
    :cond_9
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 236
    :cond_a
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->stackTrace:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 238
    :cond_b
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->frames:Ljava/util/List;

    if-eqz v3, :cond_d

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->frames:Ljava/util/List;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->frames:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 239
    :cond_c
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 238
    :cond_d
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->frames:Ljava/util/List;

    if-nez v3, :cond_c

    .line 240
    :cond_e
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->innerExceptions:Ljava/util/List;

    if-eqz v3, :cond_10

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->innerExceptions:Ljava/util/List;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->innerExceptions:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 241
    :cond_f
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .line 240
    :cond_10
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->innerExceptions:Ljava/util/List;

    if-nez v3, :cond_f

    .line 242
    :cond_11
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->wrapperSdkName:Ljava/lang/String;

    if-eqz v3, :cond_13

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->wrapperSdkName:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->wrapperSdkName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 243
    :cond_12
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    .line 242
    :cond_13
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->wrapperSdkName:Ljava/lang/String;

    if-nez v3, :cond_12

    .line 244
    :cond_14
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->minidumpFilePath:Ljava/lang/String;

    if-eqz v3, :cond_15

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->minidumpFilePath:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->minidumpFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    move v0, v3

    goto/16 :goto_0

    :cond_15
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->minidumpFilePath:Ljava/lang/String;

    if-nez v3, :cond_16

    const/4 v3, 0x1

    goto :goto_1

    :cond_16
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getFrames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->frames:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    return-object v0
.end method

.method public getInnerExceptions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->innerExceptions:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->message:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    return-object v0
.end method

.method public getMinidumpFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->minidumpFilePath:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    return-object v0
.end method

.method public getStackTrace()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->stackTrace:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->type:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    return-object v0
.end method

.method public getWrapperSdkName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->wrapperSdkName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->type:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    move v1, v2

    .line 250
    .local v1, "result":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->message:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->message:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    move v1, v2

    .line 251
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->stackTrace:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->stackTrace:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    move v1, v2

    .line 252
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->frames:Ljava/util/List;

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->frames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v2, v3

    move v1, v2

    .line 253
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->innerExceptions:Ljava/util/List;

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->innerExceptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v2, v3

    move v1, v2

    .line 254
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->wrapperSdkName:Ljava/lang/String;

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->wrapperSdkName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v2, v3

    move v1, v2

    .line 255
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->minidumpFilePath:Ljava/lang/String;

    if-eqz v3, :cond_6

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->minidumpFilePath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v2, v3

    move v1, v2

    .line 256
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    return v0

    .line 249
    .end local v1    # "result":I
    .restart local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 250
    .restart local v1    # "result":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 251
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 252
    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    .line 253
    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    .line 254
    :cond_5
    const/4 v3, 0x0

    goto :goto_5

    .line 255
    :cond_6
    const/4 v3, 0x0

    goto :goto_6
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    move-object v1, p1

    .local v1, "object":Lorg/json/JSONObject;
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "type"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->setType(Ljava/lang/String;)V

    .line 206
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "message"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->setMessage(Ljava/lang/String;)V

    .line 207
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "stackTrace"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->setStackTrace(Ljava/lang/String;)V

    .line 208
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "frames"

    invoke-static {}, Lcom/microsoft/appcenter/crashes/ingestion/models/json/StackFrameFactory;->getInstance()Lcom/microsoft/appcenter/crashes/ingestion/models/json/StackFrameFactory;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->readArray(Lorg/json/JSONObject;Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/json/ModelFactory;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->setFrames(Ljava/util/List;)V

    .line 209
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "innerExceptions"

    invoke-static {}, Lcom/microsoft/appcenter/crashes/ingestion/models/json/ExceptionFactory;->getInstance()Lcom/microsoft/appcenter/crashes/ingestion/models/json/ExceptionFactory;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->readArray(Lorg/json/JSONObject;Ljava/lang/String;Lcom/microsoft/appcenter/ingestion/models/json/ModelFactory;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->setInnerExceptions(Ljava/util/List;)V

    .line 210
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "wrapperSdkName"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->setWrapperSdkName(Ljava/lang/String;)V

    .line 211
    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "minidumpFilePath"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->setMinidumpFilePath(Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public setFrames(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    move-object v1, p1

    .local v1, "frames":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/appcenter/crashes/ingestion/models/StackFrame;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->frames:Ljava/util/List;

    .line 146
    return-void
.end method

.method public setInnerExceptions(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    move-object v1, p1

    .local v1, "innerExceptions":Ljava/util/List;, "Ljava/util/List<Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->innerExceptions:Ljava/util/List;

    .line 164
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->message:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setMinidumpFilePath(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    move-object v1, p1

    .local v1, "minidumpFilePath":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->minidumpFilePath:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setStackTrace(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    move-object v1, p1

    .local v1, "stackTrace":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->stackTrace:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    move-object v1, p1

    .local v1, "type":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->type:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setWrapperSdkName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    move-object v1, p1

    .local v1, "wrapperSdkName":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->wrapperSdkName:Ljava/lang/String;

    .line 183
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
    .line 216
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;
    move-object v1, p1

    .local v1, "writer":Lorg/json/JSONStringer;
    move-object v2, v1

    const-string/jumbo v3, "type"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    move-object v2, v1

    const-string/jumbo v3, "message"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    move-object v2, v1

    const-string/jumbo v3, "stackTrace"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->getStackTrace()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    move-object v2, v1

    const-string/jumbo v3, "frames"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->getFrames()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->writeArray(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/util/List;)V

    .line 220
    move-object v2, v1

    const-string/jumbo v3, "innerExceptions"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->getInnerExceptions()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->writeArray(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/util/List;)V

    .line 221
    move-object v2, v1

    const-string/jumbo v3, "wrapperSdkName"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->getWrapperSdkName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    move-object v2, v1

    const-string/jumbo v3, "minidumpFilePath"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/Exception;->getMinidumpFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    return-void
.end method
