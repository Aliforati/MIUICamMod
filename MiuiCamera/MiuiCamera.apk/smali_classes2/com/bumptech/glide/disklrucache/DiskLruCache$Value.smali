.class public final Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/disklrucache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Value"
.end annotation


# instance fields
.field public final files:[Ljava/io/File;

.field public final key:Ljava/lang/String;

.field public final lengths:[J

.field public final sequenceNumber:J

.field public final synthetic this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[J)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->key:Ljava/lang/String;

    iput-wide p3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->sequenceNumber:J

    iput-object p5, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->files:[Ljava/io/File;

    iput-object p6, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->lengths:[J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[JLcom/bumptech/glide/disklrucache/DiskLruCache$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[J)V

    return-void
.end method


# virtual methods
.method public edit()Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .locals 4

    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->sequenceNumber:J

    invoke-static {v0, v1, v2, v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$1700(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;J)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getFile(I)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->files:[Ljava/io/File;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getLength(I)J
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->lengths:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->files:[Ljava/io/File;

    aget-object p1, v1, p1

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$1800(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
