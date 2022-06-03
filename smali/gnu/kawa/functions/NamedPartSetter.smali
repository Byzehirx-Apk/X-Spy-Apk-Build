.class Lgnu/kawa/functions/NamedPartSetter;
.super Lgnu/mapping/Setter;
.source "GetNamedPart.java"

# interfaces
.implements Ljava/io/Externalizable;


# direct methods
.method public constructor <init>(Lgnu/kawa/functions/NamedPart;)V
    .locals 5

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/NamedPartSetter;
    move-object v1, p1

    .local v1, "getter":Lgnu/kawa/functions/NamedPart;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lgnu/mapping/Setter;-><init>(Lgnu/mapping/Procedure;)V

    .line 280
    move-object v2, v0

    sget-object v3, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string/jumbo v4, "gnu.kawa.functions.CompileNamedPart:validateNamedPartSetter"

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/functions/NamedPartSetter;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 282
    return-void
.end method


# virtual methods
.method getGetter()Lgnu/mapping/Procedure;
    .locals 2

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/NamedPartSetter;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/functions/NamedPartSetter;->getter:Lgnu/mapping/Procedure;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/functions/NamedPartSetter;
    return-object v0
.end method

.method public numArgs()I
    .locals 3

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/NamedPartSetter;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/functions/NamedPartSetter;->getter:Lgnu/mapping/Procedure;

    check-cast v1, Lgnu/kawa/functions/NamedPart;

    iget-char v1, v1, Lgnu/kawa/functions/NamedPart;->kind:C

    const/16 v2, 0x44

    if-ne v1, v2, :cond_0

    .line 287
    const/16 v1, 0x2001

    move v0, v1

    .line 288
    .end local v0    # "this":Lgnu/kawa/functions/NamedPartSetter;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/kawa/functions/NamedPartSetter;
    :cond_0
    const/16 v1, -0x1000

    move v0, v1

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/NamedPartSetter;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/Procedure;

    iput-object v3, v2, Lgnu/kawa/functions/NamedPartSetter;->getter:Lgnu/mapping/Procedure;

    .line 302
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/functions/NamedPartSetter;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/functions/NamedPartSetter;->getter:Lgnu/mapping/Procedure;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 296
    return-void
.end method
