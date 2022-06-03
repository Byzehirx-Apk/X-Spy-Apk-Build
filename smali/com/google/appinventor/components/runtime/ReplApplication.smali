.class public Lcom/google/appinventor/components/runtime/ReplApplication;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field public static installed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/appinventor/components/runtime/ReplApplication;->installed:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 44
    move-object v2, v0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->install(Landroid/content/Context;Z)Z

    move-result v2

    sput-boolean v2, Lcom/google/appinventor/components/runtime/ReplApplication;->installed:Z

    .line 45
    return-void
.end method
