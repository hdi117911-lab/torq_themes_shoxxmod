.class Lcom/ipaulpro/afilechooser/FileListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "FileListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ipaulpro/afilechooser/FileListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field iconView:Landroid/widget/ImageView;

.field nameView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "row"    # Landroid/view/View;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    sget v0, Lcom/ipaulpro/afilechooser/R$id;->file_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ipaulpro/afilechooser/FileListAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    .line 118
    sget v0, Lcom/ipaulpro/afilechooser/R$id;->file_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ipaulpro/afilechooser/FileListAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    .line 119
    return-void
.end method
