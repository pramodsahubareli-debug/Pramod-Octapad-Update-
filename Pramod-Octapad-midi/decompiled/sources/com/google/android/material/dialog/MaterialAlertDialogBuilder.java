package com.google.android.material.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.TypedValue;
import android.view.View;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
/* loaded from: classes.dex */
public class MaterialAlertDialogBuilder extends AlertDialog.Builder {
    private static final int DEF_STYLE_ATTR = R.attr.alertDialogStyle;
    private static final int DEF_STYLE_RES = R.style.MaterialAlertDialog_MaterialComponents;
    private static final int MATERIAL_ALERT_DIALOG_THEME_OVERLAY = R.attr.materialAlertDialogTheme;
    private Drawable background;
    private final Rect backgroundInsets;

    private static int getMaterialAlertDialogThemeOverlay(Context context) {
        TypedValue materialAlertDialogThemeOverlay = MaterialAttributes.resolve(context, MATERIAL_ALERT_DIALOG_THEME_OVERLAY);
        if (materialAlertDialogThemeOverlay == null) {
            return 0;
        }
        return materialAlertDialogThemeOverlay.data;
    }

    private static Context createMaterialAlertDialogThemedContext(Context context) {
        int themeOverlayId = getMaterialAlertDialogThemeOverlay(context);
        Context themedContext = MaterialThemeOverlay.wrap(context, null, DEF_STYLE_ATTR, DEF_STYLE_RES);
        if (themeOverlayId == 0) {
            return themedContext;
        }
        return new ContextThemeWrapper(themedContext, themeOverlayId);
    }

    private static int getOverridingThemeResId(Context context, int overrideThemeResId) {
        if (overrideThemeResId == 0) {
            return getMaterialAlertDialogThemeOverlay(context);
        }
        return overrideThemeResId;
    }

    public MaterialAlertDialogBuilder(Context context) {
        this(context, 0);
    }

    public MaterialAlertDialogBuilder(Context context, int overrideThemeResId) {
        super(createMaterialAlertDialogThemedContext(context), getOverridingThemeResId(context, overrideThemeResId));
        Context context2 = getContext();
        Resources.Theme theme = context2.getTheme();
        this.backgroundInsets = MaterialDialogs.getDialogBackgroundInsets(context2, DEF_STYLE_ATTR, DEF_STYLE_RES);
        int surfaceColor = MaterialColors.getColor(context2, R.attr.colorSurface, getClass().getCanonicalName());
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(context2, null, DEF_STYLE_ATTR, DEF_STYLE_RES);
        materialShapeDrawable.initializeElevationOverlay(context2);
        materialShapeDrawable.setFillColor(ColorStateList.valueOf(surfaceColor));
        if (Build.VERSION.SDK_INT >= 28) {
            TypedValue dialogCornerRadiusValue = new TypedValue();
            theme.resolveAttribute(16844145, dialogCornerRadiusValue, true);
            float dialogCornerRadius = dialogCornerRadiusValue.getDimension(getContext().getResources().getDisplayMetrics());
            if (dialogCornerRadiusValue.type == 5 && dialogCornerRadius >= 0.0f) {
                materialShapeDrawable.setCornerSize(dialogCornerRadius);
            }
        }
        this.background = materialShapeDrawable;
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    public AlertDialog create() {
        AlertDialog alertDialog = super.create();
        Window window = alertDialog.getWindow();
        View decorView = window.getDecorView();
        if (this.background instanceof MaterialShapeDrawable) {
            ((MaterialShapeDrawable) this.background).setElevation(ViewCompat.getElevation(decorView));
        }
        Drawable insetDrawable = MaterialDialogs.insetDrawable(this.background, this.backgroundInsets);
        window.setBackgroundDrawable(insetDrawable);
        decorView.setOnTouchListener(new InsetDialogOnTouchListener(alertDialog, this.backgroundInsets));
        return alertDialog;
    }

    public Drawable getBackground() {
        return this.background;
    }

    public MaterialAlertDialogBuilder setBackground(Drawable background) {
        this.background = background;
        return this;
    }

    public MaterialAlertDialogBuilder setBackgroundInsetStart(int backgroundInsetStart) {
        if (getContext().getResources().getConfiguration().getLayoutDirection() == 1) {
            this.backgroundInsets.right = backgroundInsetStart;
        } else {
            this.backgroundInsets.left = backgroundInsetStart;
        }
        return this;
    }

    public MaterialAlertDialogBuilder setBackgroundInsetTop(int backgroundInsetTop) {
        this.backgroundInsets.top = backgroundInsetTop;
        return this;
    }

    public MaterialAlertDialogBuilder setBackgroundInsetEnd(int backgroundInsetEnd) {
        if (getContext().getResources().getConfiguration().getLayoutDirection() == 1) {
            this.backgroundInsets.left = backgroundInsetEnd;
        } else {
            this.backgroundInsets.right = backgroundInsetEnd;
        }
        return this;
    }

    public MaterialAlertDialogBuilder setBackgroundInsetBottom(int backgroundInsetBottom) {
        this.backgroundInsets.bottom = backgroundInsetBottom;
        return this;
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    /* renamed from: setTitle  reason: collision with other method in class */
    public MaterialAlertDialogBuilder mo433setTitle(int titleId) {
        return (MaterialAlertDialogBuilder) super.mo433setTitle(titleId);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    /* renamed from: setTitle  reason: collision with other method in class */
    public MaterialAlertDialogBuilder mo434setTitle(CharSequence title) {
        return (MaterialAlertDialogBuilder) super.mo434setTitle(title);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    /* renamed from: setCustomTitle  reason: collision with other method in class */
    public MaterialAlertDialogBuilder mo405setCustomTitle(View customTitleView) {
        return (MaterialAlertDialogBuilder) super.mo405setCustomTitle(customTitleView);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    /* renamed from: setMessage  reason: collision with other method in class */
    public MaterialAlertDialogBuilder mo411setMessage(int messageId) {
        return (MaterialAlertDialogBuilder) super.mo411setMessage(messageId);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    /* renamed from: setMessage  reason: collision with other method in class */
    public MaterialAlertDialogBuilder mo412setMessage(CharSequence message) {
        return (MaterialAlertDialogBuilder) super.mo412setMessage(message);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    /* renamed from: setIcon  reason: collision with other method in class */
    public MaterialAlertDialogBuilder mo406setIcon(int iconId) {
        return (MaterialAlertDialogBuilder) super.mo406setIcon(iconId);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    /* renamed from: setIcon  reason: collision with other method in class */
    public MaterialAlertDialogBuilder mo407setIcon(Drawable icon) {
        return (MaterialAlertDialogBuilder) super.mo407setIcon(icon);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    /* renamed from: setIconAttribute  reason: collision with other method in class */
    public MaterialAlertDialogBuilder mo408setIconAttribute(int attrId) {
        return (MaterialAlertDialogBuilder) super.mo408setIconAttribute(attrId);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    /* renamed from: setPositiveButton  reason: collision with other method in class */
    public MaterialAlertDialogBuilder mo426setPositiveButton(int textId, DialogInterface.OnClickListener listener) {
        return (MaterialAlertDialogBuilder) super.mo426setPositiveButton(textId, listener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    /* renamed from: setPositiveButton  reason: collision with other method in class */
    public MaterialAlertDialogBuilder mo427setPositiveButton(CharSequence text, DialogInterface.OnClickListener listener) {
        return (MaterialAlertDialogBuilder) super.mo427setPositiveButton(text, listener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    /* renamed from: setPositiveButtonIcon  reason: collision with other method in class */
    public MaterialAlertDialogBuilder mo428setPositiveButtonIcon(Drawable icon) {
        return (MaterialAlertDialogBuilder) super.mo428setPositiveButtonIcon(icon);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    /* renamed from: setNegativeButton  reason: collision with other method in class */
    public MaterialAlertDialogBuilder mo416setNegativeButton(int textId, DialogInterface.OnClickListener listener) {
        return (MaterialAlertDialogBuilder) super.mo416setNegativeButton(textId, listener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    /* renamed from: setNegativeButton  reason: collision with other method in class */
    public MaterialAlertDialogBuilder mo417setNegativeButton(CharSequence text, DialogInterface.OnClickListener listener) {
        return (MaterialAlertDialogBuilder) super.mo417setNegativeButton(text, listener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    /* renamed from: setNegativeButtonIcon  reason: collision with other method in class */
    public MaterialAlertDialogBuilder mo418setNegativeButtonIcon(Drawable icon) {
        return (MaterialAlertDialogBuilder) super.mo418setNegativeButtonIcon(icon);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    /* renamed from: setNeutralButton  reason: collision with other method in class */
    public MaterialAlertDialogBuilder mo419setNeutralButton(int textId, DialogInterface.OnClickListener listener) {
        return (MaterialAlertDialogBuilder) super.mo419setNeutralButton(textId, listener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    /* renamed from: setNeutralButton  reason: collision with other method in class */
    public MaterialAlertDialogBuilder mo420setNeutralButton(CharSequence text, DialogInterface.OnClickListener listener) {
        return (MaterialAlertDialogBuilder) super.mo420setNeutralButton(text, listener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    /* renamed from: setNeutralButtonIcon  reason: collision with other method in class */
    public MaterialAlertDialogBuilder mo421setNeutralButtonIcon(Drawable icon) {
        return (MaterialAlertDialogBuilder) super.mo421setNeutralButtonIcon(icon);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    /* renamed from: setCancelable  reason: collision with other method in class */
    public MaterialAlertDialogBuilder mo403setCancelable(boolean cancelable) {
        return (MaterialAlertDialogBuilder) super.mo403setCancelable(cancelable);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    /* renamed from: setOnCancelListener  reason: collision with other method in class */
    public MaterialAlertDialogBuilder mo422setOnCancelListener(DialogInterface.OnCancelListener onCancelListener) {
        return (MaterialAlertDialogBuilder) super.mo422setOnCancelListener(onCancelListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    /* renamed from: setOnDismissListener  reason: collision with other method in class */
    public MaterialAlertDialogBuilder mo423setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        return (MaterialAlertDialogBuilder) super.mo423setOnDismissListener(onDismissListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    /* renamed from: setOnKeyListener  reason: collision with other method in class */
    public MaterialAlertDialogBuilder mo425setOnKeyListener(DialogInterface.OnKeyListener onKeyListener) {
        return (MaterialAlertDialogBuilder) super.mo425setOnKeyListener(onKeyListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    /* renamed from: setItems  reason: collision with other method in class */
    public MaterialAlertDialogBuilder mo409setItems(int itemsId, DialogInterface.OnClickListener listener) {
        return (MaterialAlertDialogBuilder) super.mo409setItems(itemsId, listener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    /* renamed from: setItems  reason: collision with other method in class */
    public MaterialAlertDialogBuilder mo410setItems(CharSequence[] items, DialogInterface.OnClickListener listener) {
        return (MaterialAlertDialogBuilder) super.mo410setItems(items, listener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    /* renamed from: setAdapter  reason: collision with other method in class */
    public MaterialAlertDialogBuilder mo402setAdapter(ListAdapter adapter, DialogInterface.OnClickListener listener) {
        return (MaterialAlertDialogBuilder) super.mo402setAdapter(adapter, listener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    /* renamed from: setCursor  reason: collision with other method in class */
    public MaterialAlertDialogBuilder mo404setCursor(Cursor cursor, DialogInterface.OnClickListener listener, String labelColumn) {
        return (MaterialAlertDialogBuilder) super.mo404setCursor(cursor, listener, labelColumn);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    /* renamed from: setMultiChoiceItems  reason: collision with other method in class */
    public MaterialAlertDialogBuilder mo413setMultiChoiceItems(int itemsId, boolean[] checkedItems, DialogInterface.OnMultiChoiceClickListener listener) {
        return (MaterialAlertDialogBuilder) super.mo413setMultiChoiceItems(itemsId, checkedItems, listener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    /* renamed from: setMultiChoiceItems  reason: collision with other method in class */
    public MaterialAlertDialogBuilder mo415setMultiChoiceItems(CharSequence[] items, boolean[] checkedItems, DialogInterface.OnMultiChoiceClickListener listener) {
        return (MaterialAlertDialogBuilder) super.mo415setMultiChoiceItems(items, checkedItems, listener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    /* renamed from: setMultiChoiceItems  reason: collision with other method in class */
    public MaterialAlertDialogBuilder mo414setMultiChoiceItems(Cursor cursor, String isCheckedColumn, String labelColumn, DialogInterface.OnMultiChoiceClickListener listener) {
        return (MaterialAlertDialogBuilder) super.mo414setMultiChoiceItems(cursor, isCheckedColumn, labelColumn, listener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    /* renamed from: setSingleChoiceItems  reason: collision with other method in class */
    public MaterialAlertDialogBuilder mo429setSingleChoiceItems(int itemsId, int checkedItem, DialogInterface.OnClickListener listener) {
        return (MaterialAlertDialogBuilder) super.mo429setSingleChoiceItems(itemsId, checkedItem, listener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    /* renamed from: setSingleChoiceItems  reason: collision with other method in class */
    public MaterialAlertDialogBuilder mo430setSingleChoiceItems(Cursor cursor, int checkedItem, String labelColumn, DialogInterface.OnClickListener listener) {
        return (MaterialAlertDialogBuilder) super.mo430setSingleChoiceItems(cursor, checkedItem, labelColumn, listener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    /* renamed from: setSingleChoiceItems  reason: collision with other method in class */
    public MaterialAlertDialogBuilder mo432setSingleChoiceItems(CharSequence[] items, int checkedItem, DialogInterface.OnClickListener listener) {
        return (MaterialAlertDialogBuilder) super.mo432setSingleChoiceItems(items, checkedItem, listener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    /* renamed from: setSingleChoiceItems  reason: collision with other method in class */
    public MaterialAlertDialogBuilder mo431setSingleChoiceItems(ListAdapter adapter, int checkedItem, DialogInterface.OnClickListener listener) {
        return (MaterialAlertDialogBuilder) super.mo431setSingleChoiceItems(adapter, checkedItem, listener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    /* renamed from: setOnItemSelectedListener  reason: collision with other method in class */
    public MaterialAlertDialogBuilder mo424setOnItemSelectedListener(AdapterView.OnItemSelectedListener listener) {
        return (MaterialAlertDialogBuilder) super.mo424setOnItemSelectedListener(listener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    /* renamed from: setView  reason: collision with other method in class */
    public MaterialAlertDialogBuilder mo435setView(int layoutResId) {
        return (MaterialAlertDialogBuilder) super.mo435setView(layoutResId);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    /* renamed from: setView  reason: collision with other method in class */
    public MaterialAlertDialogBuilder mo436setView(View view) {
        return (MaterialAlertDialogBuilder) super.mo436setView(view);
    }
}
