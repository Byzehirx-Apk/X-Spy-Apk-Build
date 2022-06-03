.class public Lcom/google/appinventor/components/runtime/util/KodularCompanionUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "KodularCompanionUtil"

    sput-object v0, Lcom/google/appinventor/components/runtime/util/KodularCompanionUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static drawerLayoutFix(Landroidx/drawerlayout/widget/DrawerLayout;ZZ)V
    .locals 8

    .prologue
    .line 35
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    if-eqz v3, :cond_0

    move v3, v2

    if-eqz v3, :cond_0

    .line 37
    move-object v3, v0

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->removeViewAt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 42
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 39
    sget-object v3, Lcom/google/appinventor/components/runtime/util/KodularCompanionUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "Trying to remove drawerLayout for makeroid companion failed. Reason: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 42
    :cond_0
    goto :goto_0
.end method

.method public static statusBarColor(Landroid/app/Activity;ZI)V
    .locals 8

    .prologue
    .line 45
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    if-eqz v3, :cond_1

    .line 47
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 48
    sget-object v3, Lcom/google/appinventor/components/runtime/util/KodularCompanionUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Trying to re-add statusbar color."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 49
    move-object v3, v0

    move v4, v2

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->setStatusBarColor(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 55
    :cond_0
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 52
    sget-object v3, Lcom/google/appinventor/components/runtime/util/KodularCompanionUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "Trying to re-add statusbar color failed. Reason: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 55
    :cond_1
    goto :goto_0
.end method

.method public static toolbarColor(Landroidx/appcompat/widget/Toolbar;ZI)V
    .locals 8

    .prologue
    .line 58
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    if-eqz v3, :cond_0

    .line 60
    :try_start_0
    sget-object v3, Lcom/google/appinventor/components/runtime/util/KodularCompanionUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Trying to re-add titlebar color."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 61
    move-object v3, v0

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move v6, v2

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/Toolbar;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 66
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 63
    sget-object v3, Lcom/google/appinventor/components/runtime/util/KodularCompanionUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "Trying to re-add titlebar color failed. Reason: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 66
    :cond_0
    goto :goto_0
.end method
