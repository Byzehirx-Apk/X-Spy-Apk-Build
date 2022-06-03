.class Lcom/google/android/material/textfield/TextInputLayout$2;
.super Ljava/lang/Object;
.source "TextInputLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/TextInputLayout;->updatePasswordToggleView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 4

    .prologue
    .line 1606
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/google/android/material/textfield/TextInputLayout;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/textfield/TextInputLayout$2;->this$0:Lcom/google/android/material/textfield/TextInputLayout;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1609
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/textfield/TextInputLayout$2;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout$2;->this$0:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->passwordVisibilityToggleRequested(Z)V

    .line 1610
    return-void
.end method
