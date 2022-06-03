.class public abstract Lcom/google/appinventor/components/runtime/util/AsyncCallbackFacade;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair",
        "<TS;>;"
    }
.end annotation


# instance fields
.field protected final callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 22
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/AsyncCallbackFacade;->callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    .line 23
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 27
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/AsyncCallbackFacade;->callback:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V

    .line 28
    return-void
.end method
