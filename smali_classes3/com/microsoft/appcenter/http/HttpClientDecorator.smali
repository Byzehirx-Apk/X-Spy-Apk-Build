.class public abstract Lcom/microsoft/appcenter/http/HttpClientDecorator;
.super Ljava/lang/Object;
.source "HttpClientDecorator.java"

# interfaces
.implements Lcom/microsoft/appcenter/http/HttpClient;


# instance fields
.field final mDecoratedApi:Lcom/microsoft/appcenter/http/HttpClient;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/http/HttpClient;)V
    .locals 4

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpClientDecorator;
    move-object v1, p1

    .local v1, "decoratedApi":Lcom/microsoft/appcenter/http/HttpClient;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 17
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/http/HttpClientDecorator;->mDecoratedApi:Lcom/microsoft/appcenter/http/HttpClient;

    .line 18
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpClientDecorator;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/http/HttpClientDecorator;->mDecoratedApi:Lcom/microsoft/appcenter/http/HttpClient;

    invoke-interface {v1}, Lcom/microsoft/appcenter/http/HttpClient;->close()V

    .line 23
    return-void
.end method

.method getDecoratedApi()Lcom/microsoft/appcenter/http/HttpClient;
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpClientDecorator;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/http/HttpClientDecorator;->mDecoratedApi:Lcom/microsoft/appcenter/http/HttpClient;

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/http/HttpClientDecorator;
    return-object v0
.end method

.method public reopen()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/http/HttpClientDecorator;
    move-object v1, v0

    iget-object v1, v1, Lcom/microsoft/appcenter/http/HttpClientDecorator;->mDecoratedApi:Lcom/microsoft/appcenter/http/HttpClient;

    invoke-interface {v1}, Lcom/microsoft/appcenter/http/HttpClient;->reopen()V

    .line 28
    return-void
.end method
