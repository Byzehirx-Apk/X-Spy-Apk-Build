.class public interface abstract annotation Lcom/google/appinventor/components/annotations/androidmanifest/PathPermissionElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/PathPermissionElement;
        path = ""
        pathPattern = ""
        pathPrefix = ""
        permission = ""
        readPermission = ""
        writePermission = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract path()Ljava/lang/String;
.end method

.method public abstract pathPattern()Ljava/lang/String;
.end method

.method public abstract pathPrefix()Ljava/lang/String;
.end method

.method public abstract permission()Ljava/lang/String;
.end method

.method public abstract readPermission()Ljava/lang/String;
.end method

.method public abstract writePermission()Ljava/lang/String;
.end method
