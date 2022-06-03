.class Lkawa/ReplDocument$3;
.super Ljava/lang/Object;
.source "ReplDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/ReplDocument;->write(Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkawa/ReplDocument;

.field final synthetic val$str:Ljava/lang/String;

.field final synthetic val$style:Ljavax/swing/text/AttributeSet;


# direct methods
.method constructor <init>(Lkawa/ReplDocument;Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V
    .locals 6

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lkawa/ReplDocument$3;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lkawa/ReplDocument$3;->this$0:Lkawa/ReplDocument;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lkawa/ReplDocument$3;->val$str:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lkawa/ReplDocument$3;->val$style:Ljavax/swing/text/AttributeSet;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lkawa/ReplDocument$3;
    move-object v3, v0

    iget-object v3, v3, Lkawa/ReplDocument$3;->this$0:Lkawa/ReplDocument;

    iget-object v3, v3, Lkawa/ReplDocument;->pane:Ljavax/swing/JTextPane;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lkawa/ReplDocument$3;->this$0:Lkawa/ReplDocument;

    iget-object v3, v3, Lkawa/ReplDocument;->pane:Ljavax/swing/JTextPane;

    invoke-virtual {v3}, Ljavax/swing/JTextPane;->getCaretPosition()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lkawa/ReplDocument$3;->this$0:Lkawa/ReplDocument;

    iget v4, v4, Lkawa/ReplDocument;->outputMark:I

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v1, v3

    .line 150
    .local v1, "moveCaret":Z
    move-object v3, v0

    iget-object v3, v3, Lkawa/ReplDocument$3;->this$0:Lkawa/ReplDocument;

    move-object v4, v0

    iget-object v4, v4, Lkawa/ReplDocument$3;->this$0:Lkawa/ReplDocument;

    iget v4, v4, Lkawa/ReplDocument;->outputMark:I

    move-object v5, v0

    iget-object v5, v5, Lkawa/ReplDocument$3;->val$str:Ljava/lang/String;

    move-object v6, v0

    iget-object v6, v6, Lkawa/ReplDocument$3;->val$style:Ljavax/swing/text/AttributeSet;

    invoke-virtual {v3, v4, v5, v6}, Lkawa/ReplDocument;->insertString(ILjava/lang/String;Ljavax/swing/text/AttributeSet;)V

    .line 151
    move-object v3, v0

    iget-object v3, v3, Lkawa/ReplDocument$3;->val$str:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v3

    .line 152
    .local v2, "len":I
    move-object v3, v0

    iget-object v3, v3, Lkawa/ReplDocument$3;->this$0:Lkawa/ReplDocument;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lkawa/ReplDocument;->outputMark:I

    move v5, v2

    add-int/2addr v4, v5

    iput v4, v3, Lkawa/ReplDocument;->outputMark:I

    .line 153
    move v3, v1

    if-eqz v3, :cond_0

    .line 154
    move-object v3, v0

    iget-object v3, v3, Lkawa/ReplDocument$3;->this$0:Lkawa/ReplDocument;

    iget-object v3, v3, Lkawa/ReplDocument;->pane:Ljavax/swing/JTextPane;

    move-object v4, v0

    iget-object v4, v4, Lkawa/ReplDocument$3;->this$0:Lkawa/ReplDocument;

    iget v4, v4, Lkawa/ReplDocument;->outputMark:I

    invoke-virtual {v3, v4}, Ljavax/swing/JTextPane;->setCaretPosition(I)V

    .line 155
    :cond_0
    return-void

    .line 148
    .end local v1    # "moveCaret":Z
    .end local v2    # "len":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
