.class Landroidx/print/PrintHelper$PrintUriAdapter$1$1;
.super Ljava/lang/Object;
.source "PrintHelper.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/print/PrintHelper$PrintUriAdapter$1;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroidx/print/PrintHelper$PrintUriAdapter$1;


# direct methods
.method constructor <init>(Landroidx/print/PrintHelper$PrintUriAdapter$1;)V
    .locals 4

    .prologue
    .line 429
    move-object v0, p0

    .local v0, "this":Landroidx/print/PrintHelper$PrintUriAdapter$1$1;
    move-object v1, p1

    .local v1, "this$2":Landroidx/print/PrintHelper$PrintUriAdapter$1;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/print/PrintHelper$PrintUriAdapter$1$1;->this$2:Landroidx/print/PrintHelper$PrintUriAdapter$1;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 432
    move-object v0, p0

    .local v0, "this":Landroidx/print/PrintHelper$PrintUriAdapter$1$1;
    move-object v1, v0

    iget-object v1, v1, Landroidx/print/PrintHelper$PrintUriAdapter$1$1;->this$2:Landroidx/print/PrintHelper$PrintUriAdapter$1;

    iget-object v1, v1, Landroidx/print/PrintHelper$PrintUriAdapter$1;->this$1:Landroidx/print/PrintHelper$PrintUriAdapter;

    invoke-virtual {v1}, Landroidx/print/PrintHelper$PrintUriAdapter;->cancelLoad()V

    .line 433
    move-object v1, v0

    iget-object v1, v1, Landroidx/print/PrintHelper$PrintUriAdapter$1$1;->this$2:Landroidx/print/PrintHelper$PrintUriAdapter$1;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/print/PrintHelper$PrintUriAdapter$1;->cancel(Z)Z

    move-result v1

    .line 434
    return-void
.end method
