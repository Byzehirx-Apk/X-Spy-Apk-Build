.class abstract Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/FirebaseDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Transactional"
.end annotation


# instance fields
.field final arg1:Ljava/lang/Object;

.field final arg2:Ljava/lang/Object;

.field final retv:Lcom/google/appinventor/components/runtime/FirebaseDB$a;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/appinventor/components/runtime/FirebaseDB$a;)V
    .locals 6

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 97
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;->arg1:Ljava/lang/Object;

    .line 98
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;->arg2:Ljava/lang/Object;

    .line 99
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;->retv:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    .line 100
    return-void
.end method


# virtual methods
.method getResult()Lcom/google/appinventor/components/runtime/FirebaseDB$a;
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;->retv:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    move-object v0, v1

    return-object v0
.end method

.method abstract run(Lcom/firebase/client/MutableData;)Lcom/firebase/client/Transaction$Result;
.end method
