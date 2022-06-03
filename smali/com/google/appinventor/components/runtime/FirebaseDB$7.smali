.class final Lcom/google/appinventor/components/runtime/FirebaseDB$7;
.super Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseDB;->AppendValue(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/lang/Object;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseDB;Lcom/google/appinventor/components/runtime/FirebaseDB$a;Lcom/google/appinventor/components/runtime/FirebaseDB$a;Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 790
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/lang/Object;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/appinventor/components/runtime/FirebaseDB$a;)V

    return-void
.end method


# virtual methods
.method final run(Lcom/firebase/client/MutableData;)Lcom/firebase/client/Transaction$Result;
    .locals 6

    .prologue
    .line 793
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Lcom/firebase/client/MutableData;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 794
    move-object v2, v4

    if-nez v3, :cond_0

    .line 795
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    const-string/jumbo v4, "Previous value was empty."

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/FirebaseDB$a;->iLHecwZEZ1qFKybU5FAR3aqOIDdUsGdPPaR0D5I2BkdnPzgzEMwtpOPW3wNOFXm:Ljava/lang/String;

    .line 796
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object v3

    move-object v0, v3

    .line 821
    :goto_0
    return-object v0

    .line 799
    :cond_0
    move-object v3, v2

    :try_start_0
    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 800
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v2, v3

    .line 809
    move-object v3, v2

    instance-of v3, v3, Ljava/util/List;

    if-eqz v3, :cond_2

    .line 810
    move-object v3, v2

    check-cast v3, Ljava/util/List;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 812
    move-object v3, v2

    :try_start_1
    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move-object v2, v3

    .line 816
    .line 817
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/firebase/client/MutableData;->setValue(Ljava/lang/Object;)V

    .line 818
    move-object v3, v1

    invoke-static {v3}, Lcom/firebase/client/Transaction;->success(Lcom/firebase/client/MutableData;)Lcom/firebase/client/Transaction$Result;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 802
    :cond_1
    move-object v3, v0

    :try_start_2
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    const-string/jumbo v4, "Invalid JSON object in database (shouldn\'t happen!)"

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/FirebaseDB$a;->iLHecwZEZ1qFKybU5FAR3aqOIDdUsGdPPaR0D5I2BkdnPzgzEMwtpOPW3wNOFXm:Ljava/lang/String;

    .line 803
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 806
    :catch_0
    move-exception v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    const-string/jumbo v4, "Invalid JSON object in database (shouldn\'t happen!)"

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/FirebaseDB$a;->iLHecwZEZ1qFKybU5FAR3aqOIDdUsGdPPaR0D5I2BkdnPzgzEMwtpOPW3wNOFXm:Ljava/lang/String;

    .line 807
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 814
    :catch_1
    move-exception v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    const-string/jumbo v4, "Could not convert value to JSON."

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/FirebaseDB$a;->iLHecwZEZ1qFKybU5FAR3aqOIDdUsGdPPaR0D5I2BkdnPzgzEMwtpOPW3wNOFXm:Ljava/lang/String;

    .line 815
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 820
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/FirebaseDB$7;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    const-string/jumbo v4, "You can only append to a list."

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/FirebaseDB$a;->iLHecwZEZ1qFKybU5FAR3aqOIDdUsGdPPaR0D5I2BkdnPzgzEMwtpOPW3wNOFXm:Ljava/lang/String;

    .line 821
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method
