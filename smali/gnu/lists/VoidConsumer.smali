.class public Lgnu/lists/VoidConsumer;
.super Lgnu/lists/FilterConsumer;
.source "VoidConsumer.java"


# static fields
.field public static instance:Lgnu/lists/VoidConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Lgnu/lists/VoidConsumer;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/lists/VoidConsumer;-><init>()V

    sput-object v0, Lgnu/lists/VoidConsumer;->instance:Lgnu/lists/VoidConsumer;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lgnu/lists/VoidConsumer;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lgnu/lists/FilterConsumer;-><init>(Lgnu/lists/Consumer;)V

    .line 17
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lgnu/lists/VoidConsumer;->skipping:Z

    .line 18
    return-void
.end method

.method public static getInstance()Lgnu/lists/VoidConsumer;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lgnu/lists/VoidConsumer;->instance:Lgnu/lists/VoidConsumer;

    return-object v0
.end method


# virtual methods
.method public ignoring()Z
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lgnu/lists/VoidConsumer;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lgnu/lists/VoidConsumer;
    return v0
.end method
