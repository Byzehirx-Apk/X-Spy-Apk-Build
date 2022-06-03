.class Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$3;
.super Ljava/lang/Object;
.source "FloatingActionButtonImpl.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->ensurePreDrawListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V
    .locals 4

    .prologue
    .line 609
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$3;
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$3;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 612
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$3;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$3;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onPreDraw()V

    .line 613
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$3;
    return v0
.end method
