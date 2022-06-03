.class Lkawa/ReplEditorKit;
.super Ljavax/swing/text/StyledEditorKit;
.source "ReplPane.java"


# instance fields
.field factory:Ljavax/swing/text/ViewFactory;

.field final pane:Lkawa/ReplPane;

.field styledFactory:Ljavax/swing/text/ViewFactory;


# direct methods
.method public constructor <init>(Lkawa/ReplPane;)V
    .locals 8

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lkawa/ReplEditorKit;
    move-object v1, p1

    .local v1, "pane":Lkawa/ReplPane;
    move-object v2, v0

    invoke-direct {v2}, Ljavax/swing/text/StyledEditorKit;-><init>()V

    .line 181
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkawa/ReplEditorKit;->pane:Lkawa/ReplPane;

    .line 182
    move-object v2, v0

    move-object v3, v0

    invoke-super {v3}, Ljavax/swing/text/StyledEditorKit;->getViewFactory()Ljavax/swing/text/ViewFactory;

    move-result-object v3

    iput-object v3, v2, Lkawa/ReplEditorKit;->styledFactory:Ljavax/swing/text/ViewFactory;

    .line 183
    move-object v2, v0

    new-instance v3, Lkawa/ReplEditorKit$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lkawa/ReplEditorKit$1;-><init>(Lkawa/ReplEditorKit;Lkawa/ReplPane;)V

    iput-object v3, v2, Lkawa/ReplEditorKit;->factory:Ljavax/swing/text/ViewFactory;

    .line 224
    return-void
.end method


# virtual methods
.method public getViewFactory()Ljavax/swing/text/ViewFactory;
    .locals 2

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lkawa/ReplEditorKit;
    move-object v1, v0

    iget-object v1, v1, Lkawa/ReplEditorKit;->factory:Ljavax/swing/text/ViewFactory;

    move-object v0, v1

    .end local v0    # "this":Lkawa/ReplEditorKit;
    return-object v0
.end method
