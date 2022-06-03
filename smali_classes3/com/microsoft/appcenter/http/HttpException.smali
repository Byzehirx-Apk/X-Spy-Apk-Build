.class public Lcom/microsoft/appcenter/http/HttpException;
.super Ljava/io/IOException;
.source "HttpException.java"


# instance fields
.field private final mHttpResponse:Lcom/microsoft/appcenter/http/HttpResponse;


# direct methods
.method public constructor <init>(Lcom/microsoft/appcenter/http/HttpResponse;)V
    .locals 5
    .param p1    # Lcom/microsoft/appcenter/http/HttpResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpException;
    move-object v1, p1

    .local v1, "httpResponse":Lcom/microsoft/appcenter/http/HttpResponse;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/microsoft/appcenter/http/HttpResponse;->getStatusCode()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v4}, Lcom/microsoft/appcenter/http/HttpResponse;->getPayload()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/microsoft/appcenter/http/HttpException;->getDetailMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 30
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/http/HttpException;->mHttpResponse:Lcom/microsoft/appcenter/http/HttpResponse;

    .line 31
    return-void
.end method

.method private static getDetailMessage(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 35
    move v0, p0

    .local v0, "status":I
    move-object v1, p1

    .local v1, "payload":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    move v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 38
    .end local v0    # "status":I
    :goto_0
    return-object v0

    .restart local v0    # "status":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpException;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 57
    .end local v0    # "this":Lcom/microsoft/appcenter/http/HttpException;
    :goto_0
    return v0

    .line 53
    .restart local v0    # "this":Lcom/microsoft/appcenter/http/HttpException;
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

    .line 55
    :cond_2
    move-object v3, v1

    check-cast v3, Lcom/microsoft/appcenter/http/HttpException;

    move-object v2, v3

    .line 57
    .local v2, "that":Lcom/microsoft/appcenter/http/HttpException;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/http/HttpException;->mHttpResponse:Lcom/microsoft/appcenter/http/HttpResponse;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/http/HttpException;->mHttpResponse:Lcom/microsoft/appcenter/http/HttpResponse;

    invoke-virtual {v3, v4}, Lcom/microsoft/appcenter/http/HttpResponse;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public getHttpResponse()Lcom/microsoft/appcenter/http/HttpResponse;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpException;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/http/HttpException;->mHttpResponse:Lcom/microsoft/appcenter/http/HttpResponse;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/http/HttpException;
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpException;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/http/HttpException;->mHttpResponse:Lcom/microsoft/appcenter/http/HttpResponse;

    invoke-virtual {v1}, Lcom/microsoft/appcenter/http/HttpResponse;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/http/HttpException;
    return v0
.end method
