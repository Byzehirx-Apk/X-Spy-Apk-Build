.class final Lcom/google/appinventor/components/runtime/TinyWebDB$4$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/TinyWebDB$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic QGAZOXcdjHKQSTylJ1PoRPU6GviAfBkJokC9i5wWel7BvaAua8hNDN1OOldV05g5:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/TinyWebDB$4;

.field private synthetic l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/TinyWebDB$4;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 291
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/TinyWebDB$4$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/TinyWebDB$4;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/TinyWebDB$4$2;->QGAZOXcdjHKQSTylJ1PoRPU6GviAfBkJokC9i5wWel7BvaAua8hNDN1OOldV05g5:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/TinyWebDB$4$2;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/lang/Object;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 295
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/TinyWebDB$4$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/TinyWebDB$4;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/TinyWebDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/TinyWebDB;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TinyWebDB$4$2;->QGAZOXcdjHKQSTylJ1PoRPU6GviAfBkJokC9i5wWel7BvaAua8hNDN1OOldV05g5:Ljava/lang/String;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/TinyWebDB$4$2;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/TinyWebDB;->GotValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 296
    return-void
.end method
