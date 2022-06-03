.class Lcom/microsoft/appcenter/analytics/AuthenticationProvider$1;
.super Ljava/lang/Object;
.source "AuthenticationProvider.java"

# interfaces
.implements Lcom/microsoft/appcenter/analytics/AuthenticationProvider$AuthenticationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->acquireTokenAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/analytics/AuthenticationProvider;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/analytics/AuthenticationProvider;)V
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AuthenticationProvider$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/analytics/AuthenticationProvider;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$1;->this$0:Lcom/microsoft/appcenter/analytics/AuthenticationProvider;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationResult(Ljava/lang/String;Ljava/util/Date;)V
    .locals 7

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/analytics/AuthenticationProvider$1;
    move-object v1, p1

    .local v1, "token":Ljava/lang/String;
    move-object v2, p2

    .local v2, "expiryDate":Ljava/util/Date;
    move-object v3, v0

    iget-object v3, v3, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$1;->this$0:Lcom/microsoft/appcenter/analytics/AuthenticationProvider;

    move-object v4, v1

    move-object v5, v2

    move-object v6, v0

    invoke-static {v3, v4, v5, v6}, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->access$000(Lcom/microsoft/appcenter/analytics/AuthenticationProvider;Ljava/lang/String;Ljava/util/Date;Lcom/microsoft/appcenter/analytics/AuthenticationProvider$AuthenticationCallback;)V

    .line 128
    return-void
.end method
