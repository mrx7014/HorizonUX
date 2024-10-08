.class Lcom/samsung/android/ui/picker/widget/SeslColorPicker$1;
.super Ljava/lang/Object;
.source "SeslColorPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/picker/widget/SeslColorPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/picker/widget/SeslColorPicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    .line 81
    iput-object p1, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$1;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "var1"    # Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$1;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-static {v0}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->access$000(Lcom/samsung/android/ui/picker/widget/SeslColorPicker;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 85
    .local v0, "var2":I
    const/4 v1, 0x0

    .local v1, "var3":I
    :goto_0
    if-ge v1, v0, :cond_1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 86
    iget-object v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$1;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-static {v2}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->access$100(Lcom/samsung/android/ui/picker/widget/SeslColorPicker;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$1;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->access$202(Lcom/samsung/android/ui/picker/widget/SeslColorPicker;Z)Z

    .line 88
    iget-object v2, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$1;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-static {v2}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->access$000(Lcom/samsung/android/ui/picker/widget/SeslColorPicker;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 89
    .local v2, "var4":I
    iget-object v3, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$1;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-static {v3}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->access$300(Lcom/samsung/android/ui/picker/widget/SeslColorPicker;)Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$PickedColor;->setColor(I)V

    .line 91
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$1;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-static {v3, v2}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->access$400(Lcom/samsung/android/ui/picker/widget/SeslColorPicker;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    goto :goto_1

    .line 92
    :catchall_0
    move-exception v3

    .line 93
    .local v3, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    .end local v3    # "throwable":Ljava/lang/Throwable;
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$1;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-static {v3}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->access$500(Lcom/samsung/android/ui/picker/widget/SeslColorPicker;)Lcom/samsung/android/ui/picker/widget/SeslColorPicker$OnColorChangedListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 96
    iget-object v3, p0, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$1;->this$0:Lcom/samsung/android/ui/picker/widget/SeslColorPicker;

    invoke-static {v3}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker;->access$500(Lcom/samsung/android/ui/picker/widget/SeslColorPicker;)Lcom/samsung/android/ui/picker/widget/SeslColorPicker$OnColorChangedListener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/samsung/android/ui/picker/widget/SeslColorPicker$OnColorChangedListener;->onColorChanged(I)V

    .line 85
    .end local v2    # "var4":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v1    # "var3":I
    :cond_1
    return-void
.end method
