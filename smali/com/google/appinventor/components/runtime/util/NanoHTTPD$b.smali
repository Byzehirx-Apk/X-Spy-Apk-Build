.class final Lcom/google/appinventor/components/runtime/util/NanoHTTPD$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;)V
    .locals 4

    .prologue
    .line 317
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;B)V
    .locals 5

    .prologue
    .line 317
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$b;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;)V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 11

    .prologue
    .line 320
    move-object v1, p0

    move-object v2, p1

    new-instance v3, Ljava/lang/Thread;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    new-instance v5, Ljava/lang/ThreadGroup;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "biggerstack"

    invoke-direct {v6, v7}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    move-object v6, v2

    const-string/jumbo v7, "HTTPD Session"

    const-wide/32 v8, 0x40000

    invoke-direct/range {v4 .. v9}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    .line 321
    move-object v2, v4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 322
    move-object v3, v2

    move-object v1, v3

    return-object v1
.end method
