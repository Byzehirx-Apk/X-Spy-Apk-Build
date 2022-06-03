.class Lkawa/ReplEditorKit$1$1;
.super Ljavax/swing/text/ComponentView;
.source "ReplPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/ReplEditorKit$1;->create(Ljavax/swing/text/Element;)Ljavax/swing/text/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lkawa/ReplEditorKit$1;


# direct methods
.method constructor <init>(Lkawa/ReplEditorKit$1;Ljavax/swing/text/Element;)V
    .locals 5

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lkawa/ReplEditorKit$1$1;
    move-object v1, p1

    move-object v2, p2

    .local v2, "x0":Ljavax/swing/text/Element;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lkawa/ReplEditorKit$1$1;->this$1:Lkawa/ReplEditorKit$1;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavax/swing/text/ComponentView;-><init>(Ljavax/swing/text/Element;)V

    return-void
.end method


# virtual methods
.method protected createComponent()Ljava/awt/Component;
    .locals 9

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lkawa/ReplEditorKit$1$1;
    move-object v5, v0

    invoke-virtual {v5}, Lkawa/ReplEditorKit$1$1;->getElement()Ljavax/swing/text/Element;

    move-result-object v5

    invoke-interface {v5}, Ljavax/swing/text/Element;->getAttributes()Ljavax/swing/text/AttributeSet;

    move-result-object v5

    move-object v1, v5

    .line 195
    .local v1, "attr":Ljavax/swing/text/AttributeSet;
    new-instance v5, Ljavax/swing/JPanel;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljavax/swing/JPanel;-><init>()V

    move-object v2, v5

    .line 196
    .local v2, "panel":Ljavax/swing/JPanel;
    move-object v5, v1

    sget-object v6, Lkawa/ReplPane;->ViewableAttribute:Ljava/lang/Object;

    invoke-interface {v5, v6}, Ljavax/swing/text/AttributeSet;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/kawa/models/Viewable;

    move-object v3, v5

    .line 201
    .local v3, "v":Lgnu/kawa/models/Viewable;
    move-object v5, v3

    invoke-static {}, Lgnu/kawa/swingviews/SwingDisplay;->getInstance()Lgnu/kawa/models/Display;

    move-result-object v6

    move-object v7, v2

    invoke-interface {v5, v6, v7}, Lgnu/kawa/models/Viewable;->makeView(Lgnu/kawa/models/Display;Ljava/lang/Object;)V

    .line 202
    move-object v5, v2

    invoke-virtual {v5}, Ljavax/swing/JPanel;->getComponentCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 204
    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavax/swing/JPanel;->getComponent(I)Ljava/awt/Component;

    move-result-object v5

    move-object v4, v5

    .line 205
    .local v4, "comp":Ljava/awt/Component;
    move-object v5, v2

    invoke-virtual {v5}, Ljavax/swing/JPanel;->removeAll()V

    .line 212
    :goto_0
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lkawa/ReplEditorKit$1$1;
    return-object v0

    .line 209
    .end local v4    # "comp":Ljava/awt/Component;
    .restart local v0    # "this":Lkawa/ReplEditorKit$1$1;
    :cond_0
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lkawa/ReplEditorKit$1$1;->this$1:Lkawa/ReplEditorKit$1;

    iget-object v6, v6, Lkawa/ReplEditorKit$1;->val$pane:Lkawa/ReplPane;

    invoke-virtual {v6}, Lkawa/ReplPane;->getBackground()Ljava/awt/Color;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavax/swing/JPanel;->setBackground(Ljava/awt/Color;)V

    .line 210
    move-object v5, v2

    move-object v4, v5

    .restart local v4    # "comp":Ljava/awt/Component;
    goto :goto_0
.end method
