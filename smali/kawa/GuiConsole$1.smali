.class Lkawa/GuiConsole$1;
.super Ljava/awt/event/WindowAdapter;
.source "GuiConsole.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/GuiConsole;->setupMenus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkawa/GuiConsole;


# direct methods
.method constructor <init>(Lkawa/GuiConsole;)V
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lkawa/GuiConsole$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkawa/GuiConsole$1;->this$0:Lkawa/GuiConsole;

    move-object v2, v0

    invoke-direct {v2}, Ljava/awt/event/WindowAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public windowClosing(Ljava/awt/event/WindowEvent;)V
    .locals 3

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lkawa/GuiConsole$1;
    move-object v1, p1

    .local v1, "e":Ljava/awt/event/WindowEvent;
    move-object v2, v0

    iget-object v2, v2, Lkawa/GuiConsole$1;->this$0:Lkawa/GuiConsole;

    invoke-virtual {v2}, Lkawa/GuiConsole;->close()V

    .line 92
    return-void
.end method
