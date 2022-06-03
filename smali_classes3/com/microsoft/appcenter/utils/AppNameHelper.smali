.class public Lcom/microsoft/appcenter/utils/AppNameHelper;
.super Ljava/lang/Object;
.source "AppNameHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/AppNameHelper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    move-object v1, v3

    .line 14
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    move-object v3, v1

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    move v2, v3

    .line 15
    .local v2, "labelRes":I
    move v3, v2

    if-nez v3, :cond_0

    .line 16
    move-object v3, v1

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 18
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-object v0

    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method
