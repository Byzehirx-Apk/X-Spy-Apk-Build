.class final Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->EmailPasswordLogin(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener",
        "<",
        "Lcom/google/firebase/auth/AuthResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;)V
    .locals 4

    .prologue
    .line 154
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 9
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->access$300(Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v2

    move-object v1, v2

    .line 159
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;

    const-string/jumbo v3, "EmailPassword"

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/firebase/auth/FirebaseUser;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/firebase/auth/FirebaseUser;->getEmail()Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v7}, Lcom/google/firebase/auth/FirebaseUser;->getPhoneNumber()Ljava/lang/String;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Lcom/google/firebase/auth/FirebaseUser;->getPhotoUrl()Landroid/net/Uri;

    move-result-object v8

    if-nez v8, :cond_0

    const-string/jumbo v8, ""

    :goto_0
    invoke-virtual/range {v2 .. v8}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->LoginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 163
    :goto_1
    return-void

    .line 159
    :cond_0
    move-object v8, v1

    invoke-virtual {v8}, Lcom/google/firebase/auth/FirebaseUser;->getPhotoUrl()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 161
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;

    const-string/jumbo v3, "EmailPassword"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularFirebaseAuthentication;->LoginFailed(Ljava/lang/String;)V

    .line 163
    goto :goto_1
.end method
