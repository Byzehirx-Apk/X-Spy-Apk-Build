.class public Lcom/google/appinventor/components/runtime/errors/PermissionException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private final KaiqfKFioejChPrVk66Zh6PqE4I9OMHHEE3e5CIB0thmpooCrEnpoRacX1mk3Fuv:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    .line 25
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/errors/PermissionException;->KaiqfKFioejChPrVk66Zh6PqE4I9OMHHEE3e5CIB0thmpooCrEnpoRacX1mk3Fuv:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 5

    .prologue
    .line 38
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "Unable to complete the operation because the user denied permission: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/errors/PermissionException;->KaiqfKFioejChPrVk66Zh6PqE4I9OMHHEE3e5CIB0thmpooCrEnpoRacX1mk3Fuv:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getPermissionNeeded()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/errors/PermissionException;->KaiqfKFioejChPrVk66Zh6PqE4I9OMHHEE3e5CIB0thmpooCrEnpoRacX1mk3Fuv:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method
