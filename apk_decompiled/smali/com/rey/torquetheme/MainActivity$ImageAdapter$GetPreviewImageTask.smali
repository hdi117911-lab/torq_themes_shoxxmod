.class Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rey/torquetheme/MainActivity$ImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetPreviewImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mIndex:I

.field private mView:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/rey/torquetheme/MainActivity$ImageAdapter;


# direct methods
.method public constructor <init>(Lcom/rey/torquetheme/MainActivity$ImageAdapter;ILandroid/widget/ImageView;)V
    .locals 0
    .param p2, "index"    # I
    .param p3, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;->this$1:Lcom/rey/torquetheme/MainActivity$ImageAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 202
    iput p2, p0, Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;->mIndex:I

    .line 203
    iput-object p3, p0, Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;->mView:Landroid/widget/ImageView;

    .line 204
    return-void
.end method

.method private loadPreviewImage(I)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "index"    # I

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 217
    .local v0, "result":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipInputStream;

    iget-object v5, p0, Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;->this$1:Lcom/rey/torquetheme/MainActivity$ImageAdapter;

    invoke-static {v5}, Lcom/rey/torquetheme/MainActivity$ImageAdapter;->access$0(Lcom/rey/torquetheme/MainActivity$ImageAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    iget-object v6, p0, Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;->this$1:Lcom/rey/torquetheme/MainActivity$ImageAdapter;

    invoke-static {v6}, Lcom/rey/torquetheme/MainActivity$ImageAdapter;->access$1(Lcom/rey/torquetheme/MainActivity$ImageAdapter;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 218
    .local v4, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v3, 0x0

    .line 219
    .local v3, "ze":Ljava/util/zip/ZipEntry;
    :goto_0
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-nez v3, :cond_1

    .line 230
    :goto_1
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v3    # "ze":Ljava/util/zip/ZipEntry;
    .end local v4    # "zis":Ljava/util/zip/ZipInputStream;
    :goto_2
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;->mView:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 235
    iget-object v5, p0, Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;->mView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    .line 236
    .local v2, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-le v5, v2, :cond_0

    .line 237
    move-object v1, v0

    .line 238
    .local v1, "temp":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v5, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v0, v2, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 239
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 243
    .end local v1    # "temp":Landroid/graphics/Bitmap;
    .end local v2    # "width":I
    :cond_0
    return-object v0

    .line 221
    .restart local v3    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v4    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "screenshot"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 222
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 223
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_1

    .line 231
    .end local v3    # "ze":Ljava/util/zip/ZipEntry;
    .end local v4    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_0
    move-exception v5

    goto :goto_2

    .line 227
    .restart local v3    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v4    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_2
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 248
    iget-object v4, p0, Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;->this$1:Lcom/rey/torquetheme/MainActivity$ImageAdapter;

    iget-object v5, p0, Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;->this$1:Lcom/rey/torquetheme/MainActivity$ImageAdapter;

    invoke-static {v5}, Lcom/rey/torquetheme/MainActivity$ImageAdapter;->access$1(Lcom/rey/torquetheme/MainActivity$ImageAdapter;)[Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;->mIndex:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/rey/torquetheme/MainActivity$ImageAdapter;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 249
    .local v2, "file":Ljava/io/File;
    const/4 v0, 0x0

    .line 251
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 253
    :try_start_0
    iget v4, p0, Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;->mIndex:I

    invoke-direct {p0, v4}, Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;->loadPreviewImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 254
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 255
    .local v3, "out":Ljava/io/FileOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {v0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 256
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v0

    .line 264
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 262
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 264
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 263
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 258
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;->mIndex:I

    return v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 269
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;->mView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rey/torquetheme/MainActivity$ImageAdapter$Holder;

    .line 271
    .local v0, "holder":Lcom/rey/torquetheme/MainActivity$ImageAdapter$Holder;
    iget-object v1, v0, Lcom/rey/torquetheme/MainActivity$ImageAdapter$Holder;->task:Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;

    if-ne v1, p0, :cond_1

    .line 272
    iget-object v1, v0, Lcom/rey/torquetheme/MainActivity$ImageAdapter$Holder;->iv:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 273
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/rey/torquetheme/MainActivity$ImageAdapter$Holder;->task:Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;

    .line 279
    .end local v0    # "holder":Lcom/rey/torquetheme/MainActivity$ImageAdapter$Holder;
    :cond_0
    :goto_0
    return-void

    .line 276
    .restart local v0    # "holder":Lcom/rey/torquetheme/MainActivity$ImageAdapter$Holder;
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/rey/torquetheme/MainActivity$ImageAdapter$GetPreviewImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 212
    return-void
.end method
