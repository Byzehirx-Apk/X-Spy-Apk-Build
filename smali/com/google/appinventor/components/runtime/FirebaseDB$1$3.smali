.class final Lcom/google/appinventor/components/runtime/FirebaseDB$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseDB$1;->onChildChanged(Lcom/firebase/client/DataSnapshot;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/firebase/client/DataSnapshot;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB$1;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseDB$1;Lcom/firebase/client/DataSnapshot;)V
    .locals 5

    .prologue
    .line 155
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/FirebaseDB$1$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB$1;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/FirebaseDB$1$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/firebase/client/DataSnapshot;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 159
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/FirebaseDB$1$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB$1;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/FirebaseDB$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/FirebaseDB$1$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/firebase/client/DataSnapshot;

    invoke-virtual {v2}, Lcom/firebase/client/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/FirebaseDB$1$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/firebase/client/DataSnapshot;

    invoke-virtual {v3}, Lcom/firebase/client/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/FirebaseDB;->DataChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    return-void
.end method
