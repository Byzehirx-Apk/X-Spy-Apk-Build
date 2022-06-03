.class public Lgnu/lists/EofClass;
.super Ljava/lang/Object;
.source "EofClass.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field public static final eofValue:Lgnu/lists/EofClass;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Lgnu/lists/EofClass;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/lists/EofClass;-><init>()V

    sput-object v0, Lgnu/lists/EofClass;->eofValue:Lgnu/lists/EofClass;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    move-object v0, p0

    .local v0, "this":Lgnu/lists/EofClass;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 0
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 24
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/lists/EofClass;
    sget-object v1, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/EofClass;
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "this":Lgnu/lists/EofClass;
    const-string/jumbo v1, "#!eof"

    move-object v0, v1

    .end local v0    # "this":Lgnu/lists/EofClass;
    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 0
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    return-void
.end method
