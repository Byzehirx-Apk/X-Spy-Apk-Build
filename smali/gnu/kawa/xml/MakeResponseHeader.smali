.class public Lgnu/kawa/xml/MakeResponseHeader;
.super Lgnu/mapping/MethodProc;
.source "MakeResponseHeader.java"


# static fields
.field public static makeResponseHeader:Lgnu/kawa/xml/MakeResponseHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    new-instance v0, Lgnu/kawa/xml/MakeResponseHeader;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/kawa/xml/MakeResponseHeader;-><init>()V

    sput-object v0, Lgnu/kawa/xml/MakeResponseHeader;->makeResponseHeader:Lgnu/kawa/xml/MakeResponseHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/MakeResponseHeader;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 7

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/MakeResponseHeader;
    move-object v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 21
    .local v2, "key":Ljava/lang/String;
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 22
    .local v3, "val":Ljava/lang/Object;
    move-object v5, v1

    invoke-virtual {v5}, Lgnu/mapping/CallContext;->lastArg()V

    .line 23
    move-object v5, v1

    iget-object v5, v5, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v4, v5

    .line 24
    .local v4, "out":Lgnu/lists/Consumer;
    move-object v5, v4

    move-object v6, v2

    invoke-interface {v5, v6}, Lgnu/lists/Consumer;->startAttribute(Ljava/lang/Object;)V

    .line 25
    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 26
    move-object v5, v4

    invoke-interface {v5}, Lgnu/lists/Consumer;->endAttribute()V

    .line 27
    return-void
.end method
