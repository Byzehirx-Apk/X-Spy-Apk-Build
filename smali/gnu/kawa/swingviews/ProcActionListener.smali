.class Lgnu/kawa/swingviews/ProcActionListener;
.super Ljava/lang/Object;
.source "SwingDisplay.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field proc:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;)V
    .locals 4

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/ProcActionListener;
    move-object v1, p1

    .local v1, "proc":Lgnu/mapping/Procedure;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/swingviews/ProcActionListener;->proc:Lgnu/mapping/Procedure;

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 7

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/swingviews/ProcActionListener;
    move-object v1, p1

    .local v1, "e":Ljava/awt/event/ActionEvent;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lgnu/kawa/swingviews/ProcActionListener;->proc:Lgnu/mapping/Procedure;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 115
    .line 116
    return-void

    .line 112
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 114
    .local v2, "ex":Ljava/lang/Throwable;
    new-instance v3, Lgnu/mapping/WrappedException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
