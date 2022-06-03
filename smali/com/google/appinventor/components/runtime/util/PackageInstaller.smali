.class public Lcom/google/appinventor/components/runtime/util/PackageInstaller;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static doPackageInstall(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lcom/google/appinventor/components/runtime/util/PackageInstaller$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    move-object v5, v0

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/PackageInstaller$1;-><init>(Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 72
    return-void
.end method
