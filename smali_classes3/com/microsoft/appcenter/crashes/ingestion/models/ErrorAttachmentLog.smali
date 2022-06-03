.class public Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
.super Lcom/microsoft/appcenter/ingestion/models/AbstractLog;
.source "ErrorAttachmentLog.java"


# static fields
.field static final CHARSET:Ljava/nio/charset/Charset;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final CONTENT_TYPE:Ljava/lang/String; = "contentType"

.field public static final CONTENT_TYPE_TEXT_PLAIN:Ljava/lang/String; = "text/plain"

.field static final DATA:Ljava/lang/String; = "data"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final ERROR_ID:Ljava/lang/String; = "errorId"

.field private static final FILE_NAME:Ljava/lang/String; = "fileName"

.field public static final TYPE:Ljava/lang/String; = "errorAttachment"


# instance fields
.field private contentType:Ljava/lang/String;

.field private data:[B

.field private errorId:Ljava/util/UUID;

.field private fileName:Ljava/lang/String;

.field private id:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    move-object v1, v0

    invoke-direct {v1}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;-><init>()V

    return-void
.end method

.method public static attachmentWithBinary([BLjava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    .locals 7

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "data":[B
    move-object v1, p1

    .local v1, "fileName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "contentType":Ljava/lang/String;
    new-instance v4, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;-><init>()V

    move-object v3, v4

    .line 95
    .local v3, "attachmentLog":Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->setData([B)V

    .line 96
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->setFileName(Ljava/lang/String;)V

    .line 97
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->setContentType(Ljava/lang/String;)V

    .line 98
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "data":[B
    return-object v0
.end method

.method public static attachmentWithText(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    .locals 5

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "text":Ljava/lang/String;
    move-object v1, p1

    .local v1, "fileName":Ljava/lang/String;
    move-object v2, v0

    sget-object v3, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    move-object v3, v1

    const-string/jumbo v4, "text/plain"

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->attachmentWithBinary([BLjava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "text":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 236
    const/4 v3, 0x1

    move v0, v3

    .line 257
    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    :goto_0
    return v0

    .line 238
    .restart local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
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

    .line 239
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 241
    :cond_2
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 242
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 244
    :cond_3
    move-object v3, v1

    check-cast v3, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;

    move-object v2, v3

    .line 245
    .local v2, "that":Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->id:Ljava/util/UUID;

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->id:Ljava/util/UUID;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->id:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 246
    :cond_4
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 245
    :cond_5
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->id:Ljava/util/UUID;

    if-nez v3, :cond_4

    .line 248
    :cond_6
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->errorId:Ljava/util/UUID;

    if-eqz v3, :cond_8

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->errorId:Ljava/util/UUID;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->errorId:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 249
    :cond_7
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 248
    :cond_8
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->errorId:Ljava/util/UUID;

    if-nez v3, :cond_7

    .line 251
    :cond_9
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->contentType:Ljava/lang/String;

    if-eqz v3, :cond_b

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->contentType:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->contentType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 252
    :cond_a
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 251
    :cond_b
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->contentType:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 254
    :cond_c
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->fileName:Ljava/lang/String;

    if-eqz v3, :cond_e

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->fileName:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 255
    :cond_d
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 254
    :cond_e
    move-object v3, v2

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->fileName:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 257
    :cond_f
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->data:[B

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->data:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    move v0, v3

    goto/16 :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->contentType:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    return-object v0
.end method

.method public getData()[B
    .locals 2

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->data:[B

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    return-object v0
.end method

.method public getErrorId()Ljava/util/UUID;
    .locals 2

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->errorId:Ljava/util/UUID;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->fileName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    return-object v0
.end method

.method public getId()Ljava/util/UUID;
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->id:Ljava/util/UUID;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    const-string/jumbo v1, "errorAttachment"

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    move-object v2, v0

    invoke-super {v2}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->hashCode()I

    move-result v2

    move v1, v2

    .line 264
    .local v1, "result":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->id:Ljava/util/UUID;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->id:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    move v1, v2

    .line 265
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->errorId:Ljava/util/UUID;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->errorId:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    move v1, v2

    .line 266
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->contentType:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->contentType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    move v1, v2

    .line 267
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->fileName:Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->fileName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v2, v3

    move v1, v2

    .line 268
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->data:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 269
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    return v0

    .line 264
    .restart local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 265
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 266
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 267
    :cond_3
    const/4 v3, 0x0

    goto :goto_3
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->getId()Ljava/util/UUID;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->getErrorId()Ljava/util/UUID;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->getContentType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    return v0

    .restart local v0    # "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    move-object v1, p1

    .local v1, "object":Lorg/json/JSONObject;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->read(Lorg/json/JSONObject;)V

    .line 211
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->setId(Ljava/util/UUID;)V

    .line 212
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "errorId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->setErrorId(Ljava/util/UUID;)V

    .line 213
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "contentType"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->setContentType(Ljava/lang/String;)V

    .line 214
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "fileName"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->setFileName(Ljava/lang/String;)V

    .line 216
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    const-string/jumbo v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->setData([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .line 220
    return-void

    .line 217
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 218
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lorg/json/JSONException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    move-object v1, p1

    .local v1, "contentType":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->contentType:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setData([B)V
    .locals 4

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    move-object v1, p1

    .local v1, "data":[B
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->data:[B

    .line 196
    return-void
.end method

.method public setErrorId(Ljava/util/UUID;)V
    .locals 4

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    move-object v1, p1

    .local v1, "errorId":Ljava/util/UUID;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->errorId:Ljava/util/UUID;

    .line 140
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    move-object v1, p1

    .local v1, "fileName":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->fileName:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setId(Ljava/util/UUID;)V
    .locals 4

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    move-object v1, p1

    .local v1, "id":Ljava/util/UUID;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->id:Ljava/util/UUID;

    .line 122
    return-void
.end method

.method public write(Lorg/json/JSONStringer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;
    move-object v1, p1

    .local v1, "writer":Lorg/json/JSONStringer;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/microsoft/appcenter/ingestion/models/AbstractLog;->write(Lorg/json/JSONStringer;)V

    .line 225
    move-object v2, v1

    const-string/jumbo v3, "id"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->getId()Ljava/util/UUID;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 226
    move-object v2, v1

    const-string/jumbo v3, "errorId"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->getErrorId()Ljava/util/UUID;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    move-object v2, v1

    const-string/jumbo v3, "contentType"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    move-object v2, v1

    const-string/jumbo v3, "fileName"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 229
    move-object v2, v1

    const-string/jumbo v3, "data"

    move-object v4, v0

    invoke-virtual {v4}, Lcom/microsoft/appcenter/crashes/ingestion/models/ErrorAttachmentLog;->getData()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/ingestion/models/json/JSONUtils;->write(Lorg/json/JSONStringer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 230
    return-void
.end method
