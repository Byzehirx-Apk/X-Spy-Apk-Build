.class Lgnu/kawa/swingviews/ComponentModel;
.super Lgnu/kawa/models/Model;
.source "SwingDisplay.java"


# instance fields
.field component:Ljava/awt/Component;


# direct methods
.method public constructor <init>(Ljava/awt/Component;)V
    .locals 4

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/ComponentModel;
    move-object v1, p1

    .local v1, "component":Ljava/awt/Component;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/kawa/models/Model;-><init>()V

    .line 182
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/swingviews/ComponentModel;->component:Ljava/awt/Component;

    .line 183
    return-void
.end method


# virtual methods
.method public makeView(Lgnu/kawa/models/Display;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/ComponentModel;
    move-object v1, p1

    .local v1, "display":Lgnu/kawa/models/Display;
    move-object v2, p2

    .local v2, "where":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/swingviews/ComponentModel;->component:Ljava/awt/Component;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/models/Display;->addView(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    return-void
.end method
