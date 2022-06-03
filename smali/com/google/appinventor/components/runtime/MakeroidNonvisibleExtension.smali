.class public abstract Lcom/google/appinventor/components/runtime/MakeroidNonvisibleExtension;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field protected final form:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 4

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 24
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidNonvisibleExtension;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 25
    return-void
.end method


# virtual methods
.method public getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidNonvisibleExtension;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v0, v1

    return-object v0
.end method
