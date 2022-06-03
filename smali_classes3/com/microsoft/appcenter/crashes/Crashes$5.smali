.class Lcom/microsoft/appcenter/crashes/Crashes$5;
.super Ljava/lang/Object;
.source "Crashes.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/crashes/Crashes;->applyEnabledState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/crashes/Crashes;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/crashes/Crashes;)V
    .locals 4

    .prologue
    .line 419
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$5;
    move-object v1, p1

    .local v1, "this$0":Lcom/microsoft/appcenter/crashes/Crashes;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/microsoft/appcenter/crashes/Crashes$5;->this$0:Lcom/microsoft/appcenter/crashes/Crashes;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 428
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 432
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$5;
    const/16 v1, 0x50

    invoke-static {v1}, Lcom/microsoft/appcenter/crashes/Crashes;->access$400(I)V

    .line 433
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/crashes/Crashes$5;
    move v1, p1

    .local v1, "level":I
    move v2, v1

    invoke-static {v2}, Lcom/microsoft/appcenter/crashes/Crashes;->access$400(I)V

    .line 424
    return-void
.end method
