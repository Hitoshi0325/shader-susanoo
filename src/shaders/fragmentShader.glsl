uniform vec3 uDepthColor;
uniform vec3 uSurfaceColor;
varying float vElevation;
uniform float uColorOffset;
uniform float uColorMultiplier;


void main(){
    //色を混ぜる。 3は0.0は１引数、1.0は2引数、0.5ならその中間の色を表現する。
    float mixStrengtColor = (vElevation + uColorOffset) * uColorMultiplier;
    vec3 color = mix(uDepthColor, uSurfaceColor, mixStrengtColor); 
    gl_FragColor = vec4(color,1.0);
}
