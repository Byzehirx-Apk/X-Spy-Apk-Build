.class Lkawa/ReplEditorKit$1;
.super Ljava/lang/Object;
.source "ReplPane.java"

# interfaces
.implements Ljavax/swing/text/ViewFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/ReplEditorKit;-><init>(Lkawa/ReplPane;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkawa/ReplEditorKit;

.field final synthetic val$pane:Lkawa/ReplPane;


# direct methods
.method constructor <init>(Lkawa/ReplEditorKit;Lkawa/ReplPane;)V
    .locals 5

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lkawa/ReplEditorKit$1;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lkawa/ReplEditorKit$1;->this$0:Lkawa/ReplEditorKit;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lkawa/ReplEditorKit$1;->val$pane:Lkawa/ReplPane;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljavax/swing/text/Element;)Ljavax/swing/text/View;
    .locals 10

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lkawa/ReplEditorKit$1;
    move-object v1, p1

    .local v1, "elem":Ljavax/swing/text/Element;
    move-object v4, v1

    invoke-interface {v4}, Ljavax/swing/text/Element;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 188
    .local v2, "kind":Ljava/lang/String;
    move-object v4, v2

    const-string/jumbo v5, "Viewable"

    if-ne v4, v5, :cond_0

    .line 190
    new-instance v4, Lkawa/ReplEditorKit$1$1;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lkawa/ReplEditorKit$1$1;-><init>(Lkawa/ReplEditorKit$1;Ljavax/swing/text/Element;)V

    move-object v0, v4

    .line 221
    .end local v0    # "this":Lkawa/ReplEditorKit$1;
    :goto_0
    return-object v0

    .line 216
    .restart local v0    # "this":Lkawa/ReplEditorKit$1;
    :cond_0
    move-object v4, v2

    const-string/jumbo v5, "Paintable"

    if-ne v4, v5, :cond_1

    .line 218
    move-object v4, v1

    invoke-interface {v4}, Ljavax/swing/text/Element;->getAttributes()Ljavax/swing/text/AttributeSet;

    move-result-object v4

    move-object v3, v4

    .line 219
    .local v3, "attr":Ljavax/swing/text/AttributeSet;
    new-instance v4, Lkawa/PaintableView;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move-object v7, v3

    sget-object v8, Lkawa/ReplPane;->PaintableAttribute:Ljava/lang/Object;

    invoke-interface {v7, v8}, Ljavax/swing/text/AttributeSet;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/kawa/models/Paintable;

    invoke-direct {v5, v6, v7}, Lkawa/PaintableView;-><init>(Ljavax/swing/text/Element;Lgnu/kawa/models/Paintable;)V

    move-object v0, v4

    goto :goto_0

    .line 221
    .end local v3    # "attr":Ljavax/swing/text/AttributeSet;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lkawa/ReplEditorKit$1;->this$0:Lkawa/ReplEditorKit;

    iget-object v4, v4, Lkawa/ReplEditorKit;->styledFactory:Ljavax/swing/text/ViewFactory;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljavax/swing/text/ViewFactory;->create(Ljavax/swing/text/Element;)Ljavax/swing/text/View;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method
