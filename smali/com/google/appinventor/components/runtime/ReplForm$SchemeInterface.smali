.class public Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/ReplForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SchemeInterface"
.end annotation


# instance fields
.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ReplForm;

.field hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lgnu/expr/Language;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ReplForm;)V
    .locals 4

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 66
    move-object v2, v0

    const-string/jumbo v3, "scheme"

    invoke-static {v3}, Lkawa/standard/Scheme;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lgnu/expr/Language;

    .line 68
    invoke-static {}, Lgnu/expr/ModuleExp;->mustNeverCompile()V

    .line 69
    return-void
.end method

.method static synthetic tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE()V
    .locals 5

    .prologue
    .line 1071
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object v0, v2

    .line 1072
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 1073
    move-object v1, v3

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object v3, v0

    if-eq v2, v3, :cond_0

    .line 1074
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 65
    :cond_0
    return-void
.end method


# virtual methods
.method public eval(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ReplForm;

    new-instance v3, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;-><init>(Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/ReplForm;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method
