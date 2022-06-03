.class Lgnu/kawa/swingviews/SwingBox;
.super Ljavax/swing/Box;
.source "SwingDisplay.java"

# interfaces
.implements Lgnu/kawa/models/ModelListener;


# instance fields
.field model:Lgnu/kawa/models/Box;


# direct methods
.method public constructor <init>(Lgnu/kawa/models/Box;Lgnu/kawa/models/Display;)V
    .locals 9

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/SwingBox;
    move-object v1, p1

    .local v1, "model":Lgnu/kawa/models/Box;
    move-object v2, p2

    .local v2, "display":Lgnu/kawa/models/Display;
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Lgnu/kawa/models/Box;->getAxis()I

    move-result v7

    invoke-direct {v6, v7}, Ljavax/swing/Box;-><init>(I)V

    .line 128
    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v6, v7}, Lgnu/kawa/models/Box;->addListener(Lgnu/kawa/models/ModelListener;)V

    .line 129
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/kawa/models/Box;->getCellSpacing()Lgnu/kawa/models/Viewable;

    move-result-object v6

    move-object v3, v6

    .line 130
    .local v3, "cellSpacing":Lgnu/kawa/models/Viewable;
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/kawa/models/Box;->getComponentCount()I

    move-result v6

    move v4, v6

    .line 131
    .local v4, "n":I
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_1

    .line 133
    move v6, v5

    if-lez v6, :cond_0

    move-object v6, v3

    if-eqz v6, :cond_0

    .line 134
    move-object v6, v3

    move-object v7, v2

    move-object v8, v0

    invoke-interface {v6, v7, v8}, Lgnu/kawa/models/Viewable;->makeView(Lgnu/kawa/models/Display;Ljava/lang/Object;)V

    .line 135
    :cond_0
    move-object v6, v1

    move v7, v5

    invoke-virtual {v6, v7}, Lgnu/kawa/models/Box;->getComponent(I)Lgnu/kawa/models/Viewable;

    move-result-object v6

    move-object v7, v2

    move-object v8, v0

    invoke-interface {v6, v7, v8}, Lgnu/kawa/models/Viewable;->makeView(Lgnu/kawa/models/Display;Ljava/lang/Object;)V

    .line 131
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 137
    :cond_1
    return-void
.end method


# virtual methods
.method public modelUpdated(Lgnu/kawa/models/Model;Ljava/lang/Object;)V
    .locals 0
    .param p1, "model"    # Lgnu/kawa/models/Model;
    .param p2, "key"    # Ljava/lang/Object;

    .prologue
    .line 141
    return-void
.end method
