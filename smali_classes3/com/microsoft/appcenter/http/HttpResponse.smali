.class public Lcom/microsoft/appcenter/http/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# instance fields
.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final payload:Ljava/lang/String;

.field private final statusCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 5

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpResponse;
    move v1, p1

    .local v1, "status":I
    move-object v2, v0

    move v3, v1

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/microsoft/appcenter/http/HttpResponse;-><init>(ILjava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 9
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpResponse;
    move v1, p1

    .local v1, "status":I
    move-object v2, p2

    .local v2, "payload":Ljava/lang/String;
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    new-instance v6, Ljava/util/HashMap;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v3, v4, v5, v6}, Lcom/microsoft/appcenter/http/HttpResponse;-><init>(ILjava/lang/String;Ljava/util/Map;)V

    .line 50
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpResponse;
    move v1, p1

    .local v1, "status":I
    move-object v2, p2

    .local v2, "payload":Ljava/lang/String;
    move-object v3, p3

    .local v3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 60
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/microsoft/appcenter/http/HttpResponse;->payload:Ljava/lang/String;

    .line 61
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/microsoft/appcenter/http/HttpResponse;->statusCode:I

    .line 62
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/microsoft/appcenter/http/HttpResponse;->headers:Ljava/util/Map;

    .line 63
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpResponse;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 97
    const/4 v3, 0x1

    move v0, v3

    .line 104
    .end local v0    # "this":Lcom/microsoft/appcenter/http/HttpResponse;
    :goto_0
    return v0

    .line 99
    .restart local v0    # "this":Lcom/microsoft/appcenter/http/HttpResponse;
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

    .line 100
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 102
    :cond_2
    move-object v3, v1

    check-cast v3, Lcom/microsoft/appcenter/http/HttpResponse;

    move-object v2, v3

    .line 104
    .local v2, "that":Lcom/microsoft/appcenter/http/HttpResponse;
    move-object v3, v0

    iget v3, v3, Lcom/microsoft/appcenter/http/HttpResponse;->statusCode:I

    move-object v4, v2

    iget v4, v4, Lcom/microsoft/appcenter/http/HttpResponse;->statusCode:I

    if-ne v3, v4, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/http/HttpResponse;->payload:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/http/HttpResponse;->payload:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/http/HttpResponse;->headers:Ljava/util/Map;

    move-object v4, v2

    iget-object v4, v4, Lcom/microsoft/appcenter/http/HttpResponse;->headers:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpResponse;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/http/HttpResponse;->headers:Ljava/util/Map;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/http/HttpResponse;
    return-object v0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpResponse;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/http/HttpResponse;->payload:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/http/HttpResponse;
    return-object v0
.end method

.method public getStatusCode()I
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpResponse;
    move-object v1, v0

    iget v1, v1, Lcom/microsoft/appcenter/http/HttpResponse;->statusCode:I

    move v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/http/HttpResponse;
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpResponse;
    move-object v2, v0

    iget v2, v2, Lcom/microsoft/appcenter/http/HttpResponse;->statusCode:I

    move v1, v2

    .line 110
    .local v1, "result":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/http/HttpResponse;->payload:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 111
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/http/HttpResponse;->headers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 112
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/microsoft/appcenter/http/HttpResponse;
    return v0
.end method
