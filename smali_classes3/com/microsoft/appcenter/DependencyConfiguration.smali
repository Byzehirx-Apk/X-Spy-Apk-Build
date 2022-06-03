.class public final Lcom/microsoft/appcenter/DependencyConfiguration;
.super Ljava/lang/Object;
.source "DependencyConfiguration.java"


# static fields
.field private static sHttpClient:Lcom/microsoft/appcenter/http/HttpClient;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/DependencyConfiguration;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static getHttpClient()Lcom/microsoft/appcenter/http/HttpClient;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/microsoft/appcenter/DependencyConfiguration;->sHttpClient:Lcom/microsoft/appcenter/http/HttpClient;

    return-object v0
.end method

.method public static setHttpClient(Lcom/microsoft/appcenter/http/HttpClient;)V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "httpClient":Lcom/microsoft/appcenter/http/HttpClient;
    move-object v1, v0

    sput-object v1, Lcom/microsoft/appcenter/DependencyConfiguration;->sHttpClient:Lcom/microsoft/appcenter/http/HttpClient;

    .line 39
    return-void
.end method
